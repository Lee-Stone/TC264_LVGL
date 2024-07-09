/*
 * tft280.c
 *
 *  Created on: 2024年6月29日
 *      Author: 21035
 */
#include "zf_device_tft180.h"
#include "tft280.h"

_lcd_dev lcddev;

//GPIO置位（拉高）
#define LCD_CS_SET  TFT180_CS(1)
#define LCD_RS_SET  TFT180_DC(1)
#define LCD_RST_SET TFT180_RST(1)

//GPIO复位（拉低）
#define LCD_CS_CLR  TFT180_CS(0)
#define LCD_RS_CLR  TFT180_DC(0)
#define LCD_RST_CLR TFT180_RST(0)

#define LCD_LED(x)  TFT180_BLK(x)


void LCD_WR_REG(uint8 data)
{
    LCD_CS_CLR;
    LCD_RS_CLR;
    spi_write_8bit(SPI_2,data);
    LCD_CS_SET;
}

void LCD_WR_DATA(uint8 data)
{
    LCD_CS_CLR;
    LCD_RS_SET;
    spi_write_8bit(SPI_2,data);
    LCD_CS_SET;
}

void LCD_WriteReg(uint8 LCD_Reg, uint8 LCD_RegValue)
{
    LCD_WR_REG(LCD_Reg);
    LCD_WR_DATA(LCD_RegValue);
}

void Lcd_WriteData_16Bit(uint16 data)
{
    //LCD_CS_CLR;
    //LCD_RS_SET;
    spi_write_16bit(SPI_2,data);
    //LCD_CS_SET;
}

void LCD_SetWindows(uint16 xStar,uint16 yStar,uint16 xEnd,uint16 yEnd)
{
    LCD_WR_REG(0x2a);
    LCD_WR_DATA(xStar>>8);
    LCD_WR_DATA(0x00FF&xStar);
    LCD_WR_DATA(xEnd>>8);
    LCD_WR_DATA(0x00FF&xEnd);

    LCD_WR_REG(0x2b);
    LCD_WR_DATA(yStar>>8);
    LCD_WR_DATA(0x00FF&yStar);
    LCD_WR_DATA(yEnd>>8);
    LCD_WR_DATA(0x00FF&yEnd);

    LCD_WR_REG(0x2c);
}

void LCD_DrawPoint(uint16 x,uint16 y,const uint16 color)
{
    LCD_SetWindows(x, y, x, y);//设置光标位置
    Lcd_WriteData_16Bit(~color);
}

void LCD_direction(uint8 direction)
{
    lcddev.setxcmd=0x2A;
    lcddev.setycmd=0x2B;
    lcddev.wramcmd=0x2C;
    lcddev.dir=direction;
    switch(direction)
    {
        case 0:
            lcddev.width=LCD_W;
            lcddev.height=LCD_H;
            LCD_WriteReg(0x36,(1<<3)|(0<<6)|(0<<7));//BGR==1,MY==0,MX==0,MV==0
        break;
        case 1:
            lcddev.width=LCD_H;
            lcddev.height=LCD_W;
            LCD_WriteReg(0x36,(1<<3)|(0<<7)|(1<<6)|(1<<5));//BGR==1,MY==1,MX==0,MV==1
        break;
        case 2:
            lcddev.width=LCD_W;
            lcddev.height=LCD_H;
            LCD_WriteReg(0x36,(1<<3)|(1<<6)|(1<<7));//BGR==1,MY==0,MX==0,MV==0
        break;
        case 3:
            lcddev.width=LCD_H;
            lcddev.height=LCD_W;
            LCD_WriteReg(0x36,(1<<3)|(1<<7)|(1<<5));//BGR==1,MY==1,MX==0,MV==1
        break;
        default:break;
    }
}

void LCD_Clear(uint16 Color)
{
    unsigned int i,m;
    LCD_SetWindows(0,0,lcddev.width-1,lcddev.height-1);
    LCD_CS_CLR;
    LCD_RS_SET;
    for(i=0;i<lcddev.height;i++)
    {
        for(m=0;m<lcddev.width;m++)
        {
            Lcd_WriteData_16Bit(~Color);
        }
    }
    LCD_CS_SET;
}

void LCD_RESET(void)
{
    LCD_RST_CLR;
    system_delay_ms(100);
    LCD_RST_SET;
    system_delay_ms(50);
}

void LCD_Init(void)
{
    //硬件SPI2初始化
    spi_init(TFT180_SPI, SPI_MODE0, TFT180_SPI_SPEED, TFT180_SCL_PIN, TFT180_SDA_PIN, TFT180_SDA_PIN_IN, SPI_CS_NULL);
    gpio_init(TFT180_DC_PIN, GPO, GPIO_LOW, GPO_PUSH_PULL);
    gpio_init(TFT180_RES_PIN, GPO, GPIO_LOW, GPO_PUSH_PULL);
    gpio_init(TFT180_CS_PIN, GPO, GPIO_HIGH, GPO_PUSH_PULL);
    gpio_init(TFT180_BL_PIN, GPO, GPIO_HIGH, GPO_PUSH_PULL);

    LCD_RESET();       //LCD 复位
//*************2.8inch ILI9341初始化**********//
    LCD_WR_REG(0xCF);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0xC9); //C1
    LCD_WR_DATA(0X30);
    LCD_WR_REG(0xED);
    LCD_WR_DATA(0x64);
    LCD_WR_DATA(0x03);
    LCD_WR_DATA(0X12);
    LCD_WR_DATA(0X81);
    LCD_WR_REG(0xE8);
    LCD_WR_DATA(0x85);
    LCD_WR_DATA(0x10);
    LCD_WR_DATA(0x7A);
    LCD_WR_REG(0xCB);
    LCD_WR_DATA(0x39);
    LCD_WR_DATA(0x2C);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x34);
    LCD_WR_DATA(0x02);
    LCD_WR_REG(0xF7);
    LCD_WR_DATA(0x20);
    LCD_WR_REG(0xEA);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_REG(0xC0);    //Power control
    LCD_WR_DATA(0x1B);   //VRH[5:0]
    LCD_WR_REG(0xC1);    //Power control
    LCD_WR_DATA(0x00);   //SAP[2:0];BT[3:0] 01
    LCD_WR_REG(0xC5);    //VCM control
    LCD_WR_DATA(0x30);   //3F
    LCD_WR_DATA(0x30);   //3C
    LCD_WR_REG(0xC7);    //VCM control2
    LCD_WR_DATA(0XB7);
    LCD_WR_REG(0x36);    // Memory Access Control
    LCD_WR_DATA(0x08);
    LCD_WR_REG(0x3A);
    LCD_WR_DATA(0x55);
    LCD_WR_REG(0xB1);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x1A);
    LCD_WR_REG(0xB6);    // Display Function Control
    LCD_WR_DATA(0x0A);
    LCD_WR_DATA(0xA2);
    LCD_WR_REG(0xF2);    // 3Gamma Function Disable
    LCD_WR_DATA(0x00);
    LCD_WR_REG(0x26);    //Gamma curve selected
    LCD_WR_DATA(0x01);
    LCD_WR_REG(0xE0);    //Set Gamma
    LCD_WR_DATA(0x0F);
    LCD_WR_DATA(0x2A);
    LCD_WR_DATA(0x28);
    LCD_WR_DATA(0x08);
    LCD_WR_DATA(0x0E);
    LCD_WR_DATA(0x08);
    LCD_WR_DATA(0x54);
    LCD_WR_DATA(0XA9);
    LCD_WR_DATA(0x43);
    LCD_WR_DATA(0x0A);
    LCD_WR_DATA(0x0F);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_REG(0XE1);    //Set Gamma
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x15);
    LCD_WR_DATA(0x17);
    LCD_WR_DATA(0x07);
    LCD_WR_DATA(0x11);
    LCD_WR_DATA(0x06);
    LCD_WR_DATA(0x2B);
    LCD_WR_DATA(0x56);
    LCD_WR_DATA(0x3C);
    LCD_WR_DATA(0x05);
    LCD_WR_DATA(0x10);
    LCD_WR_DATA(0x0F);
    LCD_WR_DATA(0x3F);
    LCD_WR_DATA(0x3F);
    LCD_WR_DATA(0x0F);
    LCD_WR_REG(0x2B);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x01);
    LCD_WR_DATA(0x3f);
    LCD_WR_REG(0x2A);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0x00);
    LCD_WR_DATA(0xef);
    LCD_WR_REG(0x11); //Exit Sleep
    system_delay_ms(120);
    LCD_WR_REG(0x29); //display on

    LCD_direction(USE_HORIZONTAL);//设置LCD显示方向
    LCD_LED(1);//点亮背光
    //LCD_Clear(WHITE);//清全屏
}

void LCD_Fill(uint16 sx,uint16 sy,uint16 ex,uint16 ey,uint16 *color)
{
    uint16 i;
    uint16 width=ex-sx+1;      //得到填充的宽度
    uint16 height=ey-sy+1;     //高度
    uint32_t draw_size=width*height;
    uint16_t tempcolor;

    LCD_SetWindows(sx,sy,ex,ey);//设置显示窗口
    LCD_RS_SET;
    LCD_CS_CLR;
    for(i=0;i<draw_size;i++)
    {
        tempcolor=color[i];
        Lcd_WriteData_16Bit(~tempcolor); //写入数据
    }

    LCD_CS_SET;
}
