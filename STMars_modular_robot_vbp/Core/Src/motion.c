/*
 * motion.c
 *
 *  Created on: Feb 2, 2021
 *      Author: grad_
 */
#include "motion.h"

extern UARTDMA_HandleTypeDef huartdma2;
extern char Message[64]; // Transmit buffer

void ToggleUserLed(uint8_t State)
{
	uint8_t LedStatus = State;
	if(LedStatus == 0)
	{
		HAL_GPIO_WritePin(LD1_GPIO_Port, LD1_Pin, GPIO_PIN_SET);
	}
	else if(LedStatus == 1)
	{
		HAL_GPIO_WritePin(LD1_GPIO_Port, LD1_Pin, GPIO_PIN_RESET);
	}
}

void LeftMotorMotion(uint8_t MotorSpeed, uint8_t MotorDirection)
{

}

void RightMotorMotion(uint8_t MotorSpeed, uint8_t MotorDirection)
{

}
