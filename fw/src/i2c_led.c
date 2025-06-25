/*
 * i2c_led.c
 *
 *  Created on: Jun 24, 2025
 *      Author: lth
 */

#include "main.h"
#include "aw9523.h"
#include "i2c_led.h"

// These are hardcoded for the actual i2c_led hardware
const uint8_t led_mapping[5][3] = {
        { AW9523_DIM1, AW9523_DIM2, AW9523_DIM3 },   // LED 1
        { AW9523_DIM4, AW9523_DIM5, AW9523_DIM6 },   // LED 2
        { AW9523_DIM7, AW9523_DIM8, AW9523_DIM9 },   // LED 3
        { AW9523_DIM10, AW9523_DIM11, AW9523_DIM0 }, // LED 4
        { AW9523_DIM12, AW9523_DIM13, AW9523_DIM14 } // LED 5
};

AW9423_StatusTypeDef i2c_set_led(AW9523_HandleTypeDef *aw9523_handle, uint8_t led, uint8_t r, uint8_t g, uint8_t b) {

    AW9423_StatusTypeDef ret = AW9523_Ok;

    aw9523_write_register(aw9523_handle, led_mapping[led][0], r);
    aw9523_write_register(aw9523_handle, led_mapping[led][1], g);
    aw9523_write_register(aw9523_handle, led_mapping[led][2], b);

    return ret;

}
