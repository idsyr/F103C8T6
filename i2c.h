#ifndef I2C_H
#define I2C_H

#include "core/stm32f1xx.h"
#include "core/stm32f103xb.h"
#include "core/system_stm32f1xx.h"
#include "usart.h"
#include "i2c.h"

#define WHO_AM_I_REG 0x75
#define TEMP_OUT_L_REG 0x42

#define GY521_ADDR 0x68
#define READ_I2C   0x01
#define WRITE_I2C  0x00


void init_i2c1();
void write_i2c1(uint8_t* msg, uint16_t sz);
void query_i2c1(uint8_t cmd, uint16_t sz);

uint8_t getWhoAmI();


#endif
