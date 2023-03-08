################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/ADC.c \
../Src/DMA.c \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/ADC.o \
./Src/DMA.o \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/ADC.d \
./Src/DMA.d \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -DUSE_HAL_DRIVER -DSTM32F103xB -c -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/Drivers/CMSIS/Include" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/Drivers/STM32F1xx_HAL_Driver/Inc" -I"D:/embedded/Study/projects/f1103c8t6 HAL/STM32F1_CUBE/6_DMA/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/ADC.d ./Src/ADC.o ./Src/ADC.su ./Src/DMA.d ./Src/DMA.o ./Src/DMA.su ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

