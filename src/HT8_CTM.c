/**
  ******************************************************************************
  * @file HT8_CTM.c
  * @brief This file provides all the CTM firmware functions.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-05-08
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

/* Includes ------------------------------------------------------------------*/


#include "HT8_CTM.h"



/**
  * @brief CTM initialization function.
  * @param[in] Non.
  * @retval Non.
  */
void CTM_Init(void)
{
/******************** work mode select ********************/
	#ifdef	CTM_TIMER_COUNTER_MODE
		_t2m1 = 1; _t2m0 = 1;	//Select CTM timer/counter Mode
		
	#elif	CTM_PWM_OUTPUT_MODE
		_t2m1 = 1; _t2m0 = 0;	//Select CTM PWM Output Mode
		_ace7 = 0; _t2cp = 1;
		_pbc3 = 0; _pb3 = 0;
	
	#elif	CTM_COMPARE_MATCH_MODE	//Select CTM Compare Match Output Mode
		_t2m1 = 0; _t2m0 = 0;
		_ace7 = 0; _t2cp = 1;
		_pbc3 = 0; _pb3 = 0;
		
	#endif
/**************** end of work mode select ****************/		

/********************* clock select **********************/
	#ifdef	CTM_FSYS_DIV4
		_t2ck2 = 0; _t2ck1 = 0; _t2ck0 = 0;	//Select CTM Counter clock Fsys/4
	
	#elif	CTM_FSYS
		_t2ck2 = 0; _t2ck1 = 0; _t2ck0 = 1;	//Select CTM Counter clock Fsys
	
	#elif	CTM_FH_DIV16
		_t2ck2 = 0; _t2ck1 = 1; _t2ck0 = 0; //Select CTM Counter clock FH/16
		
	#elif	CTM_FH_DIV64
		_t2ck2 = 0; _t2ck1 = 1; _t2ck0 = 1; //Select CTM Counter clock FH/64
		
	#elif	CTM_FTBC
		_t2ck2 = 1; _t2ck1 = 0; _t2ck0 = 0;	//Select CTM Counter clock Ftbc
		
	#elif	CTM_FH_DIV8
		_t2ck2 = 1; _t2ck1 = 0; _t2ck0 = 1; //Select CTM Counter clock FH/8
		
	#elif	CTM_TCK_RISING_EDGE
		_t2ck2 = 1; _t2ck1 = 1; _t2ck0 = 0; //Select CTM Counter clock TCKn rising edge clock
		_ace5 = 0; _pac6 = 1; _papu6 =1;
		
	#elif	CTM_TCK_FALLING_EDGE
		_t2ck2 = 1; _t2ck1 = 1; _t2ck0 = 1;//Select CTM Counter clock TCKn falling edge clock
		_ace5 = 0; _pac6 = 1; _papu6 =1;
	#endif	
/********************* end of clock select **********************/
		
/************ TMn Counter Clear condition selection *************/	
	#ifdef	CTM_CCRA_MATCH
		_t2cclr = 1;	//CTM Counter Clear condition selection CTM Comparator A match		
	#else
		_t2cclr = 0;	//CTM Counter Clear condition selection CTM Comparator P match	
	#endif
/********* end of TMn Counter Clear condition selection *********/	
}


/**
  * @brief CTM PWM configure function.
  * Specify the following parameters in HT8_CTM.h, 
  * 1、TP2 pin output function select
  * 2、TP2 pin Output control
  * 3、TP2 Output polarity control
  * 4、TM2 PWM duty/period control
  * @param[in] Non.
  * @retval Non.
  */
void CTM_PwmOutputConfig(void)
{
/******** Select TP2 pin output function ********/	
	#ifdef	CTM_OUTPUT_INACTIVE_STATE
		_t2io1 = 0; _t2io0 = 0;		//
	
	#elif	CTM_OUTPUT_ACTIVE_STATE
		_t2io1 = 0; _t2io0 = 1;		//
	
	#elif	CTM_PWM_OUTPUT
		_t2io1 = 1; _t2io0 = 0;		//
	
	#elif	CTM_UNDEFINE
		_t2io1 = 1; _t2io0 = 1;		//
	#endif
/**** end of Select TP2 pin output function ****/	

/************* TP2 Output control **************/		
	#ifdef	CTM_ACTIVE_LOW
		_t2oc = 0;					//active low
	#else
		_t2oc = 1;					//active high
	#endif
/********* end of TP2 Output control **********/	
		
/******** TP2 Output polarity control ********/
	#ifdef	CTM_NON_INVERTED
		_t2pol = 0;					//no inverted
	#else
		_t2pol = 1;					//inverted
	#endif
/******** TP2 Output polarity control ********/

/******** TM2 PWM duty/period control ********/		
	#ifdef	CTM_CCRP_P_CCRA_D
		_t2dpx = 0;					//CCRP_P_CCRA_D
	#else
		_t2dpx = 1;					//CCRP_D_CCRA_P
	#endif
/**** end of TM2 PWM duty/period control ****/		
}


/**
  * @brief CTM PWM update function.
  * @param[in] CCRA value.
  * @param[in] CCRP value.
  * @retval Non.
  */
void CTM_PwmUpdate(u16 TempCCRA,u8 TempCCRP)
{
	_tm2al = TempCCRA & 0x00ff;	//
	_tm2ah = TempCCRA>>8;		//
	_tm2rp = TempCCRP;			//
}


/**
  * @brief CTM timer/counter mode period config function.
  * @param[in] period value,
  * select CCRA_MATCH,the value is 0~65535;
  * overflow time=TempPeriod * Tclock,
  * select CCRP_MATCH,the value is 0~255.
  * overflow time=256 * TempPeriod * Tclock, 
  * when the TempPeriod is 0,overflow time=65536 * Tclock ;
  * @retval None.
  */
void CTM_CounterModeConfig(u16 TempPeriod)
{
#ifdef	CTM_CCRA_MATCH
	_tm2al = TempPeriod & 0x00ff;	//
	_tm2ah = TempPeriod >> 8;		//
#else	
	_tm2rp = TempPeriod & 0x00ff;	//
#endif		
}


/**
  * @brief CTM compare match output config function,
  * Specify the following parameters in HT8_CTM.h, 
  * 1、TP2 pin output function select
  * 2、TP2 pin Output initial status control
  * 3、TP2 Output polarity control
  * @param[in] None.
  * @retval None.
  */
void CTM_CompareMatchOutputConfig()
{
/********** Select TP2 pin output function **********/	
	#ifdef	CTM_NO_CHANGE
		_t2io1 = 0; _t2io0 = 0;	//
	
	#elif	CTM_OUTPUT_LOW
		_t2io1 = 0; _t2io0 = 1;	//
	
	#elif	CTM_OUTPUT_HIGH
		_t2io1 = 1; _t2io0 = 0;	//
	
	#elif	CTM_OUTPUT_TOGGLE
		_t2io1 = 1; _t2io0 = 1;	//
	#endif
/********** Select TP2 pin output function **********/	

/***** TP2 Output initialization status control *****/			
	#ifdef	CTM_INITIAL_LOW
		_t2oc = 0;				//
	#else
		_t2oc = 1;	
	#endif			
/** end of TP2 Output initialization status control */		

/*********** TPn Output polarity control ************/	
	#ifdef	CTM_NON_INVERTED
		_t2pol = 0;				//
	#else
		_t2pol = 1;				//
	#endif
/******* end of TPn Output polarity control ********/
}


/**
  * @brief CTM compare match output update function,
  * @param[in] MatchTime value,
  * select CCRA_MATCH,the value is 0~65535;
  * match time=TempMatchTime * Tclock,
  * select CCRP_MATCH,the value is 0~255.
  * match time=256 * TempMatchTime * Tclock, 
  * when the TempMatchTime is 0,match time=65536 * Tclock ;
  * @retval None.
  */
void CTM_CompareMatchOutputUpdate(u16 TempMatchTime)
{
#ifdef	CTM_CCRA_MATCH
	_tm2al = TempMatchTime & 0x00ff;	//
	_tm2ah = TempMatchTime >> 8;		//
#else	
	_tm2al = 1;				//
	_tm2ah = 0;					//
	_tm2rp = TempMatchTime & 0x00ff;	//
#endif	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/