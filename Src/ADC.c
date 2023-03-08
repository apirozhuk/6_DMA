
#include "ADC.h"
#include "DMA.h"

ADC_HandleTypeDef hadc1 = {0};


void ADC_Init(void)
{
	ADC_ChannelConfTypeDef adc1_ch1 = {0};

	RCC->APB2ENR |= RCC_APB2ENR_ADC1EN;
	hadc1.Instance = ADC1;
	hadc1.Init.ContinuousConvMode = ENABLE;
	hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
	hadc1.Init.DiscontinuousConvMode = DISABLE;
	hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
	hadc1.Init.NbrOfConversion = 1;
	hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
	hadc1.DMA_Handle = &hdma1;


	adc1_ch1.Channel = ADC_CHANNEL_0;
	adc1_ch1.Rank = ADC_REGULAR_RANK_1;
	adc1_ch1.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
	HAL_ADC_ConfigChannel(&hadc1, &adc1_ch1);
	HAL_ADC_Init(&hadc1);
}

