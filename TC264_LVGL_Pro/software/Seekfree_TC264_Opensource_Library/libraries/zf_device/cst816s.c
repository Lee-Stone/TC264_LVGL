/*
 * cst816s.c
 *
 *  Created on: 2024年6月28日
 *      Author: 21035
 */
#include "zf_common_headfile.h"
#include "zf_driver_soft_iic.h"
#include "zf_device_tft180.h"
#include "zf_driver_delay.h"
#include "cst816s.h"

soft_iic_info_struct cst_iic_struct;        // 定义软件IIC结构体

#define CST816_SCL_OUT()    gpio_init(P20_6,GPO,0,GPO_OPEN_DTAIN)
#define CST816_SCL_Clr()    gpio_set_level(P20_6,0)
#define CST816_SCL_Set()    gpio_set_level(P20_6,1)

#define CST816_SDA_IN()     gpio_init(P20_8,GPI,0,GPI_FLOATING_IN)
#define CST816_SDA_Get()    gpio_get_level(P20_8)

#define CST816_SDA_OUT()    gpio_init(P20_8,GPO,0,GPO_OPEN_DTAIN)
#define CST816_SDA_Clr()    gpio_set_level(P20_8,0)
#define CST816_SDA_Set()    gpio_set_level(P20_8,1)

#define CST816_RST_OUT()    gpio_init(P20_7,GPO,0,GPO_PUSH_PULL)
#define CST816_RST_Clr()    gpio_set_level(P20_7,0)
#define CST816_RST_Set()    gpio_set_level(P20_7,1)

//#define CST816_IIC_Start()  soft_iic_start(&cst_iic_struct)
//#define CST816_IIC_Stop()   soft_iic_stop(&cst_iic_struct)
//#define CST816_IIC_ACK()    soft_iic_send_ack(&cst_iic_struct,0)
//#define CST816_IIC_NACK()    soft_iic_send_ack(&cst_iic_struct,1)
//#define CST816_IIC_Wait_ACK() soft_iic_wait_ack(&cst_iic_struct)
//#define CST816_IIC_SendByte(data) soft_iic_send_data(&cst_iic_struct,(data))
//#define CST816_IIC_RecvByte()     soft_iic_read_data(&cst_iic_struct,0)

CST816_Info CST816_Instance;            //创建CST816实例。
const uint16_t touch_press_reg[2]={0x03,0x09};

void CST816_IIC_ReadREG(uint16_t reg, uint8_t *buff, uint8_t len)
{
    int i=0;

    CST816_IIC_Start();
    CST816_IIC_SendByte(0x70);
    CST816_IIC_Wait_ACK();
    CST816_IIC_SendByte(reg&0XFF);
    CST816_IIC_Wait_ACK();

    CST816_IIC_Start();
    CST816_IIC_SendByte(0x71);
    CST816_IIC_Wait_ACK();

    for(i=0;i<len;i++)
    {
        buff[i]=CST816_IIC_RecvByte();
        CST816_IIC_NACK();
    }

    CST816_IIC_Stop();
}

void CST816_IIC_ReadSigleREG(uint16_t reg, uint8_t *val)
{
    CST816_IIC_Start();
    CST816_IIC_SendByte(0x70);
    CST816_IIC_Wait_ACK();
    CST816_IIC_SendByte(reg&0XFF);
    CST816_IIC_Wait_ACK();

    CST816_IIC_Start();
    CST816_IIC_SendByte(0x71);
    CST816_IIC_Wait_ACK();

    *val=CST816_IIC_RecvByte();
    CST816_IIC_NACK();

    CST816_IIC_Stop();
}

void CST816_Init(void)
{
    CST816_SCL_OUT();
    CST816_SDA_OUT();
    CST816_IIC_Stop();

    CST816_RST_OUT();
    CST816_RST_Clr();
    system_delay_us(10);
    CST816_RST_Set();
    system_delay_us(5000);

    gpio_init(P20_9,GPI,0,GPI_FLOATING_IN);

    uint8_t id;
    CST816_IIC_ReadSigleREG(0xA8,&id);
    printf("%x\r\n",id);
}

void CST816_Get_XY(void)
{
    uint8_t pointNub = 0;
    uint8_t buf[4],value;
    int i=0;
    static uint8_t cnt=0;
    cnt++;

    if((cnt%10)==0||cnt<10)
    {
        CST816_IIC_ReadREG(0x02,&pointNub,1);

        pointNub=pointNub&0x0f;
        if(pointNub&&(pointNub<3))
        {
            CST816_Instance.Sta=1;

            for(i=0;i<1;i++)
            {
                for(int j=0;j<4;j++)
                {
                    CST816_IIC_ReadSigleREG(touch_press_reg[i]+j,&value);
                    buf[j]=value;
                }

                switch(lcddev.dir)
                {
                    case 0:
                        CST816_Instance.X_Pos=((uint16_t)(buf[0]&0X0F)<<8)+buf[1];
                        CST816_Instance.Y_Pos=((uint16_t)(buf[2]&0X0F)<<8)+buf[3];
                        break;
                    case 1:
                        CST816_Instance.Y_Pos=lcddev.height-(((uint16_t)(buf[0]&0X0F)<<8)+buf[1]);
                        CST816_Instance.X_Pos=((uint16_t)(buf[2]&0X0F)<<8)+buf[3];
                        break;
                    case 2:
                        CST816_Instance.X_Pos=lcddev.width-(((uint16_t)(buf[0]&0X0F)<<8)+buf[1]);
                        CST816_Instance.Y_Pos=lcddev.height-(((uint16_t)(buf[2]&0X0F)<<8)+buf[3]);
                        break;
                    case 3:
                        CST816_Instance.Y_Pos=((uint16_t)(buf[0]&0X0F)<<8)+buf[1];
                        CST816_Instance.X_Pos=lcddev.width-(((uint16_t)(buf[2]&0X0F)<<8)+buf[3]);
                        break;
                }
            }

            cnt=0;
        }
        else if(pointNub==0)CST816_Instance.Sta=0;
    }
    if(cnt>240)cnt=10;
}

bool CST816_Get_Sta(void)
{
    uint8 sta=gpio_get_level(P20_9);

    if(sta==1)return 0;
    else return 1;
}

#define delay_num 4        //宏定义延时时间

//IIC起始信号
void CST816_IIC_Start(void)
{
    CST816_SDA_Set();
    CST816_SCL_Set();
    system_delay_us(delay_num);
    CST816_SDA_Clr();
    system_delay_us(delay_num);
    CST816_SCL_Clr();
}

//IIC停止信号
void CST816_IIC_Stop(void)
{
    CST816_SDA_Clr();
    CST816_SCL_Set();
    system_delay_us(delay_num);
    CST816_SDA_Set();
}

//发送ACK应答
void CST816_IIC_ACK(void)
{
    CST816_SDA_Clr();
    system_delay_us(delay_num);
    CST816_SCL_Set();
    system_delay_us(delay_num);
    CST816_SCL_Clr();
    system_delay_us(delay_num);
    CST816_SDA_Set();
}

//发送NACK应答
void CST816_IIC_NACK(void)
{
    CST816_SDA_Set();
    system_delay_us(delay_num);
    CST816_SCL_Set();
    system_delay_us(delay_num);
    CST816_SCL_Clr();
    system_delay_us(delay_num);
}


//等待IIC应答信号
unsigned char CST816_IIC_Wait_ACK(void)
{
    unsigned char t = 0;

    CST816_SDA_OUT();

    CST816_SDA_Set();
    system_delay_us(delay_num);
    CST816_SCL_Set();
    system_delay_us(delay_num);

    CST816_SDA_IN();
    while(CST816_SDA_Get())
    {
        t++;
        if(t>250)
        {
            CST816_IIC_Stop();
            return 1;
        }
    }
    CST816_SDA_OUT();
    CST816_SCL_Clr();

    return 0;
}


//IIC发送一字节数据
void CST816_IIC_SendByte(unsigned char byte)
{
    unsigned char BitCnt;

    for(BitCnt=0;BitCnt<8;BitCnt++)//要传送的数据长度为8位
    {
        if(byte&0x80) CST816_SDA_Set();//判断发送位
        else CST816_SDA_Clr();

        system_delay_us(delay_num);
        CST816_SCL_Set();
        system_delay_us(delay_num);
        CST816_SCL_Clr();
        system_delay_us(delay_num);

        if(BitCnt==7)CST816_SDA_Set();
        byte<<=1;
        system_delay_us(delay_num);
    }
}

//IIC接收一字节数据
unsigned char CST816_IIC_RecvByte(void)
{
    unsigned char retc;
    unsigned char BitCnt;

    retc=0;
    CST816_SDA_IN();//置数据线为输入方式
    for(BitCnt=0;BitCnt<8;BitCnt++)
    {
        retc<<=1;
        CST816_SCL_Set();
        system_delay_us(delay_num);
        if(CST816_SDA_Get())retc++;//读数据位,接收的数据位放入retc中
        CST816_SCL_Clr();//置时钟线为高使数据线上数据有效
        system_delay_us(delay_num);
    }
    CST816_SDA_OUT();

    return(retc);
}


