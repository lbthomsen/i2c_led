/*
 * i2c_led.h
 *
 *  Created on: Jun 24, 2025
 *      Author: lth
 */

#ifndef I2C_LED_H_
#define I2C_LED_H_

extern const uint8_t led_mapping[5][3];

AW9423_StatusTypeDef i2c_set_led(AW9523_HandleTypeDef *aw9523_handle, uint8_t led, uint8_t r, uint8_t g, uint8_t b);

#endif /* I2C_LED_H_ */
