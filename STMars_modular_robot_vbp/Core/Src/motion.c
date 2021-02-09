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
	if(MotorDirection == 1) // go forward
	{
		HAL_GPIO_WritePin(BIN1_HBridge_GPIO_Port, BIN1_HBridge_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(BIN2_HBridge_GPIO_Port, BIN2_HBridge_Pin, GPIO_PIN_RESET);
	}
	else if(MotorDirection == 0) //go back
	{
		HAL_GPIO_WritePin(BIN1_HBridge_GPIO_Port, BIN1_HBridge_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(BIN2_HBridge_GPIO_Port, BIN2_HBridge_Pin, GPIO_PIN_SET);
	}

	if(MotorSpeed > 100) MotorSpeed = 100;
	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, MotorSpeed);
}

void RightMotorMotion(uint8_t MotorSpeed, uint8_t MotorDirection)
{
	if(MotorDirection == 1) // go forward
	{
		HAL_GPIO_WritePin(AIN1_HBridge_GPIO_Port, AIN1_HBridge_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(AIN2_HBridge_GPIO_Port, AIN2_HBridge_Pin, GPIO_PIN_RESET);
	}
	else if(MotorDirection == 0) //go back
	{
		HAL_GPIO_WritePin(AIN1_HBridge_GPIO_Port, AIN1_HBridge_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(AIN2_HBridge_GPIO_Port, AIN2_HBridge_Pin, GPIO_PIN_SET);
	}

	if(MotorSpeed > 100) MotorSpeed = 100;
	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_3, MotorSpeed);

}
