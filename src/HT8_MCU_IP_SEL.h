/**
  ******************************************************************************
  * @file HT8_MCU_IP_SEL.h
  * @brief This file is used to selece MCU and IP function.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-05-07
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

/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef _HT8_MCU_IP_SEL_H_
#define	_HT8_MCU_IP_SEL_H_

#include "HT8_Type.h"

//#define	DEBUG	1	//only for debug

#include "HT66F018.h"

/************** IP select *************/

/*********** system clock *************/
//	#define	_SYS_Clock		(1)   
	
/************ work mode ***************/
//	#define	_WORK_MODE		(1)   

/********* extern interrupt ***********/
//	#define	_EXTI			(1)   

/********** Port A Wake-up ************/
//	#define	_PA_WAKEUP		(1)   

/*************** ADC ******************/
	#define	_ADC			(1)   

/*************** CTM ******************/
	#define	_CTM			(1)

/*************** STM ******************/
//	#define	_STM			(1)

/*************** PTM ******************/
//	#define	_PTM			(1)

/************* TIMEBASE ***************/
//	#define	_TIMEBASE		(1)

/*************** WDT ******************/
//	#define	_WDT			(1)

/*************** COMP *****************/
//	#define	_COMP			(1)

/*************** LVD ******************/
//	#define	_LVD			(1)

/*************** LVR ******************/
//	#define	_LVR			(1)

/************* EEPROM ****************/
//	#define	_EEPROM			(1)

/******** end of IP select ************/

#ifdef	_SYS_Clock
	#include "HT8_SYS_Clock.h"
#endif

#ifdef	_WORK_MODE
	#include "HT8_WorkMode.h"
#endif

#ifdef	_EXTI
	#include "HT8_EXTI.h"
#endif

#ifdef	_PA_WAKEUP
	#include "HT8_PA_Wakepu.h"
#endif

#ifdef	_ADC
	#include "HT8_ADC.h"
#endif

#ifdef	_CTM
	#include "HT8_CTM.h"
#endif

#ifdef	_STM
	#include "HT8_STM.h"
#endif

#ifdef	_PTM
	#include "HT8_PTM.h"
#endif

#ifdef	_TIMEBASE
	#include "HT8_TIMEBASE.h"
#endif

#ifdef	_WDT
	#include "HT8_WDT.h"
#endif

#ifdef	_COMP
	#include "HT8_COMP.h"
#endif

#ifdef	_LVD
	#include "HT8_LVD.h"
#endif

#ifdef	_LVR
	#include "HT8_LVR.h"
#endif

#ifdef	_EEPROM
	#include "HT8_EEPROM.h"
#endif

#include "HT8_it.h"

#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/