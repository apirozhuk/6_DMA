#include "UART.h"

// TX - PA9  alternate function push-pull ch4
// RX - PA10  Input floating ch5

extern DMA_HandleTypeDef hdma1;
UART_HandleTypeDef huart1;

void UART_Init(void)
{
	//UART1 init
	RCC->APB2ENR |= RCC_APB2ENR_USART1EN;
	huart1.Instance = USART1;
	huart1.Init.BaudRate = 57600;
	huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	huart1.Init.Mode = UART_MODE_TX_RX;
	huart1.Init.OverSampling = UART_OVERSAMPLING_16;
	huart1.Init.Parity = UART_PARITY_NONE;
	huart1.Init.StopBits = UART_STOPBITS_1;
	huart1.Init.WordLength = UART_WORDLENGTH_8B;
	huart1.hdmarx = &hdma1;
	HAL_UART_Init(&huart1);

	// GPIO init
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;
	GPIOA->CRH &= ~(0xff<4);
	GPIOA->CRL |= (0xb4<<4);
}
//10110100
