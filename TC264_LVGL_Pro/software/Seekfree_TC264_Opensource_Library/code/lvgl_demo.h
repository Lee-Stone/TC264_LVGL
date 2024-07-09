/*
 * lvgl_demo.h
 *
 *  Created on: 2024Äê6ÔÂ28ÈÕ
 *      Author: 21035
 */

#ifndef CODE_LVGL_DEMO_H_
#define CODE_LVGL_DEMO_H_

#include "lvgl/lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "tft280.h"
#include "cst816s.h"

void lvgl_demo(void);

extern int cnt;
extern lv_obj_t * button;
extern lv_obj_t * label;

#endif /* CODE_LVGL_DEMO_H_ */
