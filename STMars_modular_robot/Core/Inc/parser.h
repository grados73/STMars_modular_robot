/**
  ******************************************************************************
  * @file           : parser.h
  * @brief          : parsing message from uart
  * @author			: grados73
  * @project		: STMars_modular_robot
 *******************************************************************************
**/


#ifndef INC_PARSER_H_
#define INC_PARSER_H_
#include "uartdma.h"

void UART_ParseLine(UARTDMA_HandleTypeDef *huartdma);

#endif /* INC_PARSER_H_ */
