/*
 * parser.c
 *
 *  Created on: Jan 25, 2021
 *      Author: grad_
 */


#include "main.h"
#include "parser.h"
#include "string.h"
#include "uartdma.h"
#include "stdlib.h"
#include "stdio.h"
#include "motion.h"

extern UARTDMA_HandleTypeDef huartdma2;
char Message[64]; // Transmit buffer
char MyName[32] = {"No Name"}; // Name string
MOTION_STATE MotorRegulator;







/*
 * Parsing headers:
 * 		LED=1\n 	// LED On
 * 		LED=0\n 	// LED Off
 * 		ENV=X,Y,Z\n // X - temperature, Y - humidity, Z - pressure
 * 		NAME=X\n	// Change name for X
 * 		NAME=?\n	// introduce yourself
 */
void UART_ParseLine(UARTDMA_HandleTypeDef *huartdma)
{
	char BufferReceive[64];

	if(!UARTDMA_GetLineFromReceiveBuffer(huartdma, BufferReceive))
	{
		// Header
		char* ParsePointer = strtok(BufferReceive, "="); // LED\0   1\0
		// ParsePointer == LED\0

	  if(strcmp(ParsePointer, "LED") == 0)
	  {
		  UART_ParseLED();
	  }
	  else if(strcmp(ParsePointer, "MOTOR") == 0)
	  {
		  UART_ParseMotor();
	  }
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////// TURNING ON / OFF TESTING LED ////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
 * 		LED=1\n 	// LED On
 * 		LED=0\n 	// LED Off
 */
void UART_ParseLED()
{
	uint8_t LedState; // Received state variable

	char* ParsePointer = strtok(NULL, ","); // Look for next token or end of string
	// Should be now: ParsePointer == 1'\0'

	if(strlen(ParsePointer) > 0) // If string exists
	{
		if(ParsePointer[0] < '0' || ParsePointer[0] > '9') // Chceck if there are only numbers
		{
			UARTDMA_Print(&huartdma2, "LED wrong value. Don't use letters dude!\r\n"); // Print message
			return;	// And exit parsing
		}

		LedState = atoi(ParsePointer); // If there are no chars, change string to integer

		if(LedState == 1) // LED ON
		{
			ToggleUserLed(1);
			UARTDMA_Print(&huartdma2, "LED On\r\n");
		}
		else if(LedState == 0) // LED OFF
		{
			ToggleUserLed(0);
			UARTDMA_Print(&huartdma2, "LED Off\r\n");
		}
		else // Wrong state number
		{
			UARTDMA_Print(&huartdma2, "LED wrong value. Use 0 or 1.\r\n");
		}
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////// CHANGING SPEED OF MOTOR ///////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
 * MOTOR=L,R,D\0 // L - left motor speed, R - right motor speed, D - direction of motor movement
 */
void UART_ParseMotor()
{
	uint8_t i,j; // Iterators
	uint8_t MotorParameters[3]; // Left motor, Right motor, Direction of movement

	for(i = 0; i<3; i++) // 3 parameters are expected
	{
		char* ParsePointer = strtok(NULL, ","); // Look for next token or end of string

		if(strlen(ParsePointer) > 0) // If string exists
		{
			for(j=0; ParsePointer[j] != 0; j++) // Loop over all chars in current strong-block
			{
				MotorParameters[i] = atoi(ParsePointer); // If there are no chars, change string to integer
			}
		}
		else
		{
			sprintf(Message, "Motor too less values. MOTOR=L,R,D\\n\r\n"); // If not, Error message
			UARTDMA_Print(&huartdma2, Message); // Print message
			return;	// And exit parsing
		}
	}


	// Print back received data
	sprintf(Message, "Left Motor: %d\r\n", MotorParameters[0]);
	UARTDMA_Print(&huartdma2, Message);

	sprintf(Message, "Right Motor: %d\r\n", MotorParameters[1]);
	UARTDMA_Print(&huartdma2, Message);

	sprintf(Message, "Direction: %d\r\n", MotorParameters[2]);
	UARTDMA_Print(&huartdma2, Message);

	switch(MotorRegulator){
	case IDLE:
		IdleRoutine(MotorParameters);
		break;
	case CONSTGO9:
		ConstGo9Routine(MotorParameters);
		break;
	case CONSTGO6:
		ConstGo6Routine(MotorParameters);
		break;
	case CONSTBACK13:
		ConstBack13Routine(MotorParameters);
		break;
	case CONSTBACK16:
		Constback16Routine(MotorParameters);
		break;
	case GOANDTURNINGLEFT:
		GoAndTurningLeftRoutine(MotorParameters);
		break;
	case GOANDTURNINGRIGHT:
		GoAndTurningRightRoutine(MotorParameters);
		break;
	case TURNINGLEFT:
		TurningLeftRoutine(MotorParameters);
		break;
	case TURNINGRIGHT:
		TurningRightRoutine(MotorParameters);
		break;
	default:
		break;

	}


}

void IdleRoutine(uint8_t * MotorParameters)
{

}

void ConstGo9Routine(uint8_t * MotorParameters)
{

}

void ConstGo6Routine(uint8_t * MotorParameters)
{

}

void ConstBack13Routine(uint8_t * MotorParameters)
{

}

void Constback16Routine(uint8_t * MotorParameters)
{

}

void GoAndTurningLeftRoutine(uint8_t * MotorParameters)
{

}

void GoAndTurningRightRoutine(uint8_t * MotorParameters)
{

}

void TurningLeftRoutine(uint8_t * MotorParameters)
{

}

void TurningRightRoutine(uint8_t * MotorParameters)
{

}
