/**
  ******************************************************************************
  * @file HT8_CTM.h
  * @brief The header file of the CTM library.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2018-12-20
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

#ifndef _CTM_H_
#define _CTM_H_

#include "HT8_MCU_IP_SEL.h"

#define	CTM_ENABLE()			(_t2on = 1)
#define	CTM_DISABLE()			(_t2on = 0)

#define	CTM_CCRA_ISR_ENABLE()	(_t2ae = 1)
#define	CTM_CCRA_ISR_DISABLE()	(_t2ae = 0)
#define CTM_SET_FLAG_A()		(_t2af = 1)
#define CTM_CLEAR_FLAG_A()		(_t2af = 0)

#define	CTM_CCRP_ISR_ENABLE()	(_t2pe = 1)
#define	CTM_CCRP_ISR_DISABLE()	(_t2pe = 0)
#define CTM_SET_FLAG_P()		(_t2pf = 1)
#define CTM_CLEAR_FLAG_P()		(_t2pf = 0)

#define	CTM_PAUSE()				(_t2pau = 1)
#define	CTM_RUN()				(_t2pau = 0)

#define	CTM_GET_CCRA_FLAG()		_t2af
#define	CTM_GET_CCRP_FLAG()		_t2pf

#if !defined (CTM_TIMER_COUNTER_MODE) && !defined (CTM_PWM_OUTPUT_MODE) && !defined (CTM_COMPARE_MATCH_MODE)
/******** CTM work mode select ********/
	#define	CTM_TIMER_COUNTER_MODE		1
//	#define	CTM_PWM_OUTPUT_MODE			1
//	#define	CTM_COMPARE_MATCH_MODE		1
#endif
/**** end of CTM work mode select *****/


/************* clock select **************/
	#define		CTM_FSYS_DIV4			1
//	#define		CTM_FSYS				1
//	#define		CTM_FH_DIV16			1
//	#define		CTM_FH_DIV64			1
//	#define		CTM_FTBC				1
//	#define		CTM_FH_DIV8				1
//	#define		CTM_TCK_RISING_EDGE		1
//	#define		CTM_TCK_FALLING_EDGE	1
/********* end of clock select *********/
	
/** TMn Counter Clear condition selection **/
	#define		CTM_CCRA_MATCH			1
//	#define		CTM_CCRP_MATCH			1
/* end of TMn Counter Clear condition selection */

	
/****** PWM OUTPUT MODE setting ******/
#ifdef	CTM_PWM_OUTPUT_MODE			
/**** Select TP2 pin output function ****/
//	#define		CTM_OUTPUT_INACTIVE_STATE	1
//	#define		CTM_OUTPUT_ACTIVE_STATE		1
	#define		CTM_PWM_OUTPUT				1
//	#define		CTM_UNDEFINE				1
/* end of Select TPn pin output function */
	
/* TP2 Output control */
	#define		CTM_ACTIVE_LOW				1
//	#define		CTM_ACTIVE_HIGH				1
/* end of TPn Output control */
	
/***** TP2 Output polarity control *****/
	#define		CTM_NON_INVERTED			1
//	#define		CTM_INVERTED				1
/* end of TPn Output polarity control */
	
/* TM2 PWM duty/period control */
	#define		CTM_CCRP_P_CCRA_D			1	/* CCRP ?V period; CCRA ?V duty */
//	#define		CTM_CCRP_D_CCRA_P			1	/* CCRP ?V duty; CCRA ?V period */
/* end of TMn PWM duty/period control */

#endif/* end of PWM OUTPUT MODE setting */


/* TIMER COUNTER MODE setting */
#ifdef	CTM_TIMER_COUNTER_MODE

	#define	CTM_GET_COUNTER_VALUE()		(_tm2dh<<8 | _tm2dl)

#endif/* end of TIMER COUNTER MODE setting */	


/* COMPARE MATCH MODE setting */
#ifdef	CTM_COMPARE_MATCH_MODE
/* Select TP2 pin output function */
//	#define		CTM_NO_CHANGE				1	/* No change */
//	#define		CTM_OUTPUT_LOW				1	/* Output low */
//	#define		CTM_OUTPUT_HIGH				1	/* Output high */
	#define		CTM_OUTPUT_TOGGLE			1	/* Toggle output */
/* end of Select TPn pin output function */
	
/* TP2 Output initialization status control */
//	#define		CTM_INITIAL_LOW				1	/* Initial low */
	#define		CTM_INITIAL_HIGH			1	/* Initial high */
/* end of TPn Output control */
	
/***** TPn Output polarity control *****/
	#define		CTM_NON_INVERTED			1
//	#define		CTM_INVERTED				1
/* end of TPn Output polarity control */
#endif/* end of COMPARE MATCH MODE setting */


void CTM_Init(void);
void CTM_PwmOutputConfig(void);
void CTM_PwmUpdate(u16 TempCCRA,u8 TempCCRP);
void CTM_CounterModeConfig(u16 TempPeriod);
void CTM_CompareMatchOutputConfig();
void CTM_CompareMatchOutputUpdate(u16 TempMatchTime);


#endif

/******************* (C) COPYRIGHT 2018 Holtek Semiconductor Inc *****END OF FILE****/