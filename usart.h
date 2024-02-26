#ifndef USART_H
#define USART_H

#include "core/stm32f1xx.h"
#include "core/stm32f103xb.h"
#include "core/system_stm32f1xx.h"
#include "usart.h"
#include "i2c.h"
#include "lib/xprintf.h"

void init_xprintf();
void init_usart1();
void putc_usart1(char c);
char getc_usart1();
void send_usart1(char* msg, uint16_t sz);


#endif
