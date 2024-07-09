/*
 * cs816s.h
 *
 *  Created on: 2024��6��28��
 *      Author: 21035
 */
#include "all_data.h"

#ifndef LIBRARIES_ZF_DEVICE_CST816S_H_
#define LIBRARIES_ZF_DEVICE_CST816S_H_

//ģ��IIC���ֵĺ�������
void CST816_IIC_ACK(void);
void CST816_IIC_NACK(void);
unsigned char CST816_IIC_Wait_ACK(void);
void CST816_IIC_Start(void);
void CST816_IIC_Stop(void);
void CST816_IIC_SendByte(unsigned char byte);
unsigned char CST816_IIC_RecvByte(void);

void CST816_Get_XY(void);
bool CST816_Get_Sta(void);
void CST816_Init(void);

#endif /* LIBRARIES_ZF_DEVICE_CST816S_H_ */
