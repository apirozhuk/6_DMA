################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/Src/Legacy/%.o Drivers/STM32F1xx_HAL_Driver/Src/Legacy/%.su: ../Drivers/STM32F1xx_HAL_Driver/Src/Legacy/%.c Drivers/STM32F1xx_HAL_Driver/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DUSE_HAL_DRIVER -DSTM32F103xB -c -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/CMSIS/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-STM32F1xx_HAL_Driver-2f-Src-2f-Legacy

clean-Drivers-2f-STM32F1xx_HAL_Driver-2f-Src-2f-Legacy:
	-$(RM) ./Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.d ./Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.o ./Drivers/STM32F1xx_HAL_Driver/Src/Legacy/stm32f1xx_hal_can.su

.PHONY: clean-Drivers-2f-STM32F1xx_HAL_Driver-2f-Src-2f-Legacy

