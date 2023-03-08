#include "stm32f1xx_hal.h"
#include "ADC.h"
#include "DMA.h"



void GPIO_Init(void);


uint32_t data;





int main(void)
{
	HAL_Init();
	ADC_Init();
	DMA_Init();
	GPIO_Init();


	HAL_ADC_Start_DMA(&hadc1, (uint32_t*)&data, 100);
	while(1)
	{

	}
}

void ADC1_2_IRQHandler(void)
{
	 HAL_ADC_IRQHandler (&hadc1);
}

void HAL_ADC_ConvCpltCallback (ADC_HandleTypeDef * hadc)
{

}

void DMA1_Channel1_IRQHandler(void)
{
	HAL_DMA_IRQHandler(&hdma1);
}



void SysTick_Handler(void)
{
	HAL_IncTick();
}

void GPIO_Init(void)
{
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;
	GPIOA->CRL &= ~0xf;
}

