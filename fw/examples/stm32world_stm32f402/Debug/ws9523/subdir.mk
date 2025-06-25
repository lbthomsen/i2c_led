################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ws9523/aw9523.c \
../ws9523/aw9523_led_demos.c \
../ws9523/i2c_led.c 

OBJS += \
./ws9523/aw9523.o \
./ws9523/aw9523_led_demos.o \
./ws9523/i2c_led.o 

C_DEPS += \
./ws9523/aw9523.d \
./ws9523/aw9523_led_demos.d \
./ws9523/i2c_led.d 


# Each subdirectory must supply rules for building sources it contributes
ws9523/%.o ws9523/%.su ws9523/%.cyclo: ../ws9523/%.c ws9523/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/lth/src/i2c_led/fw/examples/stm32world_stm32f402/ws9523" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ws9523

clean-ws9523:
	-$(RM) ./ws9523/aw9523.cyclo ./ws9523/aw9523.d ./ws9523/aw9523.o ./ws9523/aw9523.su ./ws9523/aw9523_led_demos.cyclo ./ws9523/aw9523_led_demos.d ./ws9523/aw9523_led_demos.o ./ws9523/aw9523_led_demos.su ./ws9523/i2c_led.cyclo ./ws9523/i2c_led.d ./ws9523/i2c_led.o ./ws9523/i2c_led.su

.PHONY: clean-ws9523

