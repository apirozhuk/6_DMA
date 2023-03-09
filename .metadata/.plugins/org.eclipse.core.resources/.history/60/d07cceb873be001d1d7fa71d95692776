#include "stm32f1xx_hal.h"
#include "DMA.h"
#include "UART.h"




uint8_t data[100];








int main(void)
{

	HAL_Init();
	UART_Init();
	DMA_Init();
	HAL_UART_Receive_DMA(&huart1, data, 100);

	while(1)
	{

	}
}

void SysTick_Handler(void)
{
	HAL_IncTick();
}
