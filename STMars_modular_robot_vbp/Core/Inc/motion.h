/*
 * motion.h
 *
 *  Created on: Feb 2, 2021
 *      Author: grad_
 */
#include "main.h"
#include "string.h"
#include "uartdma.h"
#include "stdlib.h"
#include "stdio.h"


#ifndef INC_MOTION_H_
#define INC_MOTION_H_

void ToggleUserLed(uint8_t State);
void LeftMotorMotion(uint8_t MotorSpeed, uint8_t MotorDirection);
void RightMotorMotion(uint8_t MotorSpeed, uint8_t MotorDirection);



#endif /* INC_MOTION_H_ */
