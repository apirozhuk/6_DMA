#include "DMA.h"


DMA_HandleTypeDef hdma1;




void DMA_Init(void)
{
	RCC->AHBENR |= RCC_AHBENR_DMA1EN;
	hdma1.Instance = DMA1_Channel1;
	hdma1.Init.Direction = DMA_PERIPH_TO_MEMORY;
	hdma1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
	hdma1.Init.MemInc = DMA_MINC_DISABLE;
	hdma1.Init.Mode = DMA_CIRCULAR;
	hdma1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
	hdma1.Init.PeriphInc = DMA_PINC_DISABLE;
	hdma1.Init.Priority = DMA_PRIORITY_LOW;
	HAL_DMA_Init(&hdma1);
}
