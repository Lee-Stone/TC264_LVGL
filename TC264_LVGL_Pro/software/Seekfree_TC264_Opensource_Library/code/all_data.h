/*
 * all_data.h
 *
 *  Created on: 2024��6��29��
 *      Author: 21035
 */

#ifndef CODE_ALL_DATA_H_
#define CODE_ALL_DATA_H_

#include "zf_common_headfile.h"
#include "cst816s.h"
#include "tft280.h"

//LCD��Ҫ������
typedef struct
{
    uint16 width;          //LCD ���
    uint16 height;         //LCD �߶�
    uint16 id;             //LCD ID
    uint8  dir;            //���������������ƣ�0��������1��������
    uint16  wramcmd;       //��ʼдgramָ��
    uint16  setxcmd;       //����x����ָ��
    uint16  setycmd;       //����y����ָ��
}_lcd_dev;

//CST816S��Ҫ������
typedef struct
{
    unsigned char chipID;
    uint16 X_Pos;         //X����
    uint16 Y_Pos;         //Y����
    volatile bool flag;
    unsigned char Sta;          //��¼����״̬
}CST816_Info;

typedef struct {
    int cnt;
    int x[15];
    int y[15];
}_st_roll;

extern _st_roll roll;
extern _lcd_dev lcddev; //����LCD��Ҫ����
extern CST816_Info CST816_Instance; //����CST816ʵ����

#endif /* CODE_ALL_DATA_H_ */
