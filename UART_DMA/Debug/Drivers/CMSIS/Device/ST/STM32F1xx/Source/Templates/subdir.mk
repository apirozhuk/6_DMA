################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/%.o Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/%.su: ../Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/%.c Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DUSE_HAL_DRIVER -DSTM32F103xB -c -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/CMSIS/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/UART_DMA/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F1xx-2f-Source-2f-Templates

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F1xx-2f-Source-2f-Templates:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.d ./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.o ./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F1xx-2f-Source-2f-Templates

