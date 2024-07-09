/*
 * tft280.h
 *
 *  Created on: 2024��6��29��
 *      Author: 21035
 */

#ifndef LIBRARIES_ZF_DEVICE_TFT280_H_
#define LIBRARIES_ZF_DEVICE_TFT280_H_

#include "all_data.h"

//����LCD�ĳߴ�
#define LCD_W 240
#define LCD_H 320

#define USE_HORIZONTAL 3 //����Һ����˳ʱ����ת���� 0-0����ת��1-90����ת��2-180����ת��3-270����ת

#define WHITE       0xFFFF
#define BLACK       0x0000
#define BLUE        0x001F
#define BRED        0XF81F
#define GRED        0XFFE0
#define GBLUE       0X07FF
#define RED         0xF800
#define MAGENTA     0xF81F
#define GREEN       0x07E0
#define CYAN        0x7FFF
#define YELLOW      0xFFE0
#define BROWN       0XBC40 //��ɫ
#define BRRED       0XFC07 //�غ�ɫ
#define GRAY        0X8430 //��ɫ

void LCD_Init(void);
void LCD_DrawPoint(uint16 x,uint16 y,const uint16 color);
void LCD_Fill(uint16 sx,uint16 sy,uint16 ex,uint16 ey,uint16 *color);

#endif /* LIBRARIES_ZF_DEVICE_TFT280_H_ */
