/*
 * all_data.h
 *
 *  Created on: 2024年6月29日
 *      Author: 21035
 */

#ifndef CODE_ALL_DATA_H_
#define CODE_ALL_DATA_H_

#include "zf_common_headfile.h"
#include "cst816s.h"
#include "tft280.h"

//LCD重要参数集
typedef struct
{
    uint16 width;          //LCD 宽度
    uint16 height;         //LCD 高度
    uint16 id;             //LCD ID
    uint8  dir;            //横屏还是竖屏控制：0，竖屏；1，横屏。
    uint16  wramcmd;       //开始写gram指令
    uint16  setxcmd;       //设置x坐标指令
    uint16  setycmd;       //设置y坐标指令
}_lcd_dev;

//CST816S重要参数集
typedef struct
{
    unsigned char chipID;
    uint16 X_Pos;         //X坐标
    uint16 Y_Pos;         //Y坐标
    volatile bool flag;
    unsigned char Sta;          //记录触摸状态
}CST816_Info;

typedef struct {
    int cnt;
    int x[15];
    int y[15];
}_st_roll;

extern _st_roll roll;
extern _lcd_dev lcddev; //管理LCD重要参数
extern CST816_Info CST816_Instance; //创建CST816实例。

#endif /* CODE_ALL_DATA_H_ */
