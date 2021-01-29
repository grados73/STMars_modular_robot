/*
 * uart_decryption.h
 *
 *  Created on: Jan 29, 2021
 *      Author: grad_
 */

#ifndef INC_UART_DECRYPTION_H_
#define INC_UART_DECRYPTION_H_

#include "main.h"
#include "ring_buffer.h"

void UART_ParseLine(RingBuffer *ReceiveMessage);

#endif /* INC_UART_DECRYPTION_H_ */
