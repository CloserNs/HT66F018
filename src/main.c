/********************************************************************************
  * @file ADC\main.c
  * @brief This file contains the main function for the A/D Conversion example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-05-07
  ******************************************************************************
  * MCU 				: HT66F018
  * Operating Voltage 	: 5.0v
  * System Clock 		: 8MHz
  ******************************************************************************
  * @attention
  *
  * Firmware Disclaimer Information
  *
  * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
  *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
  *    other intellectual property laws.
  *
  * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
  *    other than HOLTEK and the customer.
  *
  * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
  *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
  *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
  *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
  *
  * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
  ************************************************************************************************************/

/*UART_SoftWareSendByte(0xaa);						//send head code to PC
GCC_DELAY(200);
UART_SoftWareSendByte(adcAverageValue>>8);		//send AD conversion value high byte to PC
GCC_DELAY(200);
UART_SoftWareSendByte(adcAverageValue&0xff);	//send AD conversion value low byte to PC*/

#include "HT8_MCU_IP_SEL.h"
#include "HT8_Simulation_UART.h"

vu16 g_nADC_ISR_Value;	//AD conversion value
vu8	 g_nADC_Finish;		//AD conversion finished flag
u8 ledisEnable = 0;
u16 adcCount = 0;

#define BUFFER_SIZE 15
u16 buffer[BUFFER_SIZE];
u16 bufferHead = 0;
u16 bufferCount = 0;

u16 ctmCount = 0;		//CTM计数器

void addSample(u16 sample)
{
    buffer[bufferHead] = sample;
    bufferHead = (bufferHead + 1) % BUFFER_SIZE;
    if(bufferCount < BUFFER_SIZE) bufferCount++;
    else bufferCount = BUFFER_SIZE;
}

void insertSort(u16 *arr, int n)
{
    int i, key, j;
    for (i = 1; i < n; i++)
    {
        key = arr[i];
        j = i - 1;

        while (j >= 0 && arr[j] > key)
        {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}

u16 getSimpleMedian()
{
    insertSort(buffer, bufferCount); // 排序缓冲区
    return buffer[bufferCount / 2]; // 直接返回中位数
}

void openLED(void)
{
	if(ledisEnable == 0)
	{
		GCC_DELAY(2000);
		ledisEnable = 1;
		UART_SoftWareSendByte(0xf0);
	}
	
	if (1 == CTM_GET_CCRA_FLAG())	//polling CCRA flag
	{
		CTM_CLEAR_FLAG_A();			//clear CCRA flag
		ctmCount++;
		if(ctmCount == 1500)		// 1s
		{
			ctmCount = 0;	
			_pb3 =~_pb3;
		}
	}
}

void closeLED(void)
{
	if(ledisEnable)
	{
		_pb3 = 1;
		GCC_DELAY(2000);
		ledisEnable = 0;
		UART_SoftWareSendByte(0xf1);
		ctmCount = 0;
	}
}
  
void msDelay(u16 ms)
{
	u16 index;
	for(index=0; index<ms; index++)
	{
		GCC_DELAY(2000);
		GCC_CLRWDT();
	}	
}
  
void mCTMInit(void)
{
	CTM_Init();
	CTM_CounterModeConfig(512);
	CTM_ENABLE();		//enable CTM
	GCC_DELAY(2000);	//wait system stable
}

void mAdcInit(void)
{
	ADC_Init();	
	ADC_ENABLE();
	GCC_DELAY(2000);	//wait system stable
	ADC_START();		//trigger A/D conversion
}

u8 sampleAndProcessADC()
{
	u16 adcAverageValue = 0;
	ADC_SelectChannel(ADC_CH0);
	GCC_DELAY(200);
	addSample(ADC_GetValue());
	if(bufferCount == BUFFER_SIZE){
		adcAverageValue = getSimpleMedian();
		bufferHead = 0;
		bufferCount = 0;
		adcCount++;
		if(adcCount == 2000 && adcAverageValue>0x0db0){		// 视为电池充满
			UART_SoftWareSendByte(0xfe);
			closeLED();
			return 1;
		} 
		else if(adcCount == 2000){							// 重新采样求中位数
			adcCount = 0;
		}
		else{
			addSample(adcAverageValue);
		}
	}
	return 0;
}

void checkPowerOn(void)
{
	u16 adcGetValue = 0;
	ADC_SelectChannel(ADC_CH1);
	GCC_DELAY(200);
	adcGetValue = ADC_GetValue();
	if(adcGetValue > 0xa00){						// 视为开机
		closeLED();
	} else {
		openLED();
	}
}
  
void main()
{
    SIMULATION_UART_INIT(); // Initialize simulation UART, TX on PC0

    mAdcInit();
    mCTMInit();

    u8 isFullyCharged = 0;

    // Configure PB3 as output and set it low
    _pbc3 = 0; 
    _pb3 = 1;
    _ace7 = 0;

    // Indicate application start via UART
    UART_SoftWareSendByte(0xff);

	while(1)
	{
		GCC_CLRWDT();

		if(isFullyCharged){
			msDelay(0xffff);
			continue;
		}

		checkPowerOn();
		
		isFullyCharged = sampleAndProcessADC();
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/