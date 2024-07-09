/*
 * lvgl_demo.c
 *
 *  Created on: 2024Äê6ÔÂ28ÈÕ
 *      Author: 21035
 */
#include "lvgl_demo.h"
#include <ui/src/ui.h>
#include "lv_100ask_2048/lv_100ask_2048.h"

int cnt;
_st_roll roll;
lv_obj_t * button;
lv_obj_t * label;
lv_obj_t * slide;

void button_event(lv_event_t * e);

void lvgl_demo(void)
{
    lv_init();
    LCD_Init();
    lv_port_disp_init();
    CST816_Init();
    lv_port_indev_init();

    lv_100ask_2048_simple_test();
//    ui_init();
//    button = lv_btn_create(lv_scr_act());
//    lv_obj_align(button, LV_ALIGN_CENTER, 0, 0);
//    lv_obj_set_size(button, 60, 60);
//    lv_obj_add_event_cb(button, button_event, LV_EVENT_ALL, NULL);
//
//    label = lv_label_create(button);
//    //lv_obj_set_width(label, 120);
//    lv_label_set_recolor(label,true);
//    lv_label_set_text_fmt(label, "#0000ff cnt:%d#", cnt++);
//    lv_label_set_long_mode(label, LV_LABEL_LONG_SCROLL_CIRCULAR);
//    lv_obj_align(label, LV_ALIGN_CENTER, 0, 0);
//
//    slide = lv_slider_create(lv_scr_act());
//    lv_obj_align(slide, LV_ALIGN_CENTER, 0, -80);
//    lv_obj_set_size(slide, 200, 20);
}

void button_event(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_CLICKED) {
        lv_label_set_text_fmt(label, "#0000ff cnt:%d#", cnt++);
    }
}


