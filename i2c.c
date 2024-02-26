#include "i2c.h"
#include "usart.h"
#include "core/stm32f1xx.h"
int8_t rdbuf[8] = {};

static void config_gpio(){
    SET_BIT(RCC->APB2ENR, RCC_APB2ENR_IOPBEN);
    
    SET_BIT(GPIOB->CRL, GPIO_CRL_CNF6_0  | GPIO_CRL_CNF6_1);
    SET_BIT(GPIOB->CRL, GPIO_CRL_MODE6_0 | GPIO_CRL_MODE6_1);

    SET_BIT(GPIOB->CRL, GPIO_CRL_CNF6_0  | GPIO_CRL_CNF6_1);
    SET_BIT(GPIOB->CRL, GPIO_CRL_MODE6_0 | GPIO_CRL_MODE6_1);
}

static void config_clock(){
    SET_BIT(RCC->APB1ENR, RCC_APB1ENR_I2C1EN);
    uint8_t tmp = READ_BIT(RCC->APB1ENR, RCC_APB1ENR_I2C1EN);
}

static void config_own_address(){ //in master mode no matter
    #define MUSTBE 0b0100000000000000 //bit 14(n15) must be 1
    MODIFY_REG(I2C1->OAR1,  I2C_OAR1_ADD0 | I2C_OAR1_ADD1_7 | I2C_OAR1_ADD8_9 | I2C_OAR1_ADDMODE, MUSTBE);

    CLEAR_BIT(I2C1->OAR2, I2C_OAR2_ENDUAL);  // dual addr mode
    CLEAR_BIT(I2C1->OAR2, I2C_OAR2_ADD2);    // alternative addr
    
}

static void config_speed(){ //TPCLK = (1/freq(APB1))
    MODIFY_REG(I2C1->CR2,   I2C_CR2_FREQ,    36);   //freq of module is set (просто запищи так надо)
    MODIFY_REG(I2C1->TRISE, I2C_TRISE_TRISE, 36+1); //1k/(TPCLK)+1 //время нарастания фронта
    CLEAR_BIT(I2C1->CCR,    I2C_CCR_FS);            // std speed mode
    CLEAR_BIT(I2C1->CCR,    I2C_CCR_DUTY);          // скважность 1/2 (unused in std mode)
    MODIFY_REG(I2C1->CCR,   I2C_CCR_CCR,     180);  //clock in master mode 10k/(TPCLK)*2) 
}

void init_i2c1(){
    SET_BIT(I2C1->CR1,  I2C_CR1_PE);        // disable module
    config_clock();

    CLEAR_BIT(I2C1->CR1,  I2C_CR1_ENGC);      // general call mode
    CLEAR_BIT(I2C1->CR1,  I2C_CR1_NOSTRETCH); // wait mode slave
    CLEAR_BIT(I2C1->CR1,  I2C_CR1_SMBUS);     // I2C mode not smbus
    CLEAR_BIT(I2C1->CR1,  I2C_CR1_SMBTYPE);   // smbus type (unused)
    CLEAR_BIT(I2C1->CR1,  I2C_CR1_ENARP);     // diasble arp (unused)
    MODIFY_REG(I2C1->CR1, I2C_CR1_ACK, I2C_CR1_ACK); //gen ack if get byte
    
    config_speed();
    config_own_address();
    
    SET_BIT(I2C1->CR1,  I2C_CR1_PE);        // disable module
    xprintf("init_i2c1: success\n");
}

void write_i2c1(uint8_t* msg, uint16_t sz){
    CLEAR_BIT(I2C1->CR1, I2C_CR1_POS); //положение ACK/PEC в двух байтовой конфигурации в Master.
    SET_BIT(I2C1->CR1, I2C_CR1_ACK);   //разрешает отправлять ACK/NACK после приема байта адреса или данных.

    xprintf("send start bit\n");
    SET_BIT(I2C1->CR1, I2C_CR1_START); 
    while(!READ_BIT(I2C1->CR1, I2C_SR1_SB));
    (void) I2C1->SR1; (void) I2C1->SR2; //???
    
    xprintf("send addr+mode bit\n");
    MODIFY_REG(I2C1->DR, I2C_DR_DR, (GY521_ADDR | WRITE_I2C));
    while(!READ_BIT(I2C1->SR1, I2C_SR1_ADDR));
    (void) I2C1->SR1; (void) I2C1->SR2;
    
    xprintf("send data\n");
    for(uint16_t i = 0; i<sz; ++i){
        //xprintf("TXE check1:\n");
        //while(!READ_BIT(I2C1->SR1, I2C_SR1_TXE));
        MODIFY_REG(I2C1->DR, I2C_DR_DR, msg[i]);
        xprintf("TXE check2:\n");
        while(!READ_BIT(I2C1->SR1, I2C_SR1_TXE));
    }
    
    xprintf("stop bit and finish\n");
    SET_BIT(I2C1->CR1, I2C_CR1_STOP);
}

uint8_t getWhoAmI() {
    uint8_t buf;
    CLEAR_BIT(I2C1->CR1, I2C_CR1_POS);
    MODIFY_REG(I2C1->CR1, I2C_CR1_ACK, I2C_CR1_ACK);
    SET_BIT(I2C1->CR1, I2C_CR1_START);
    while (!READ_BIT(I2C1->SR1, I2C_SR1_SB)){};
    xprintf("start sent, SR: %d\n", I2C1->SR1);
    MODIFY_REG(I2C1->DR, I2C_DR_DR, GY521_ADDR | WRITE_I2C);
    while (!READ_BIT(I2C1->SR1, I2C_SR1_ADDR)){};
    xprintf("WR@GY521:SR1::%xSR2::%x\n", I2C1->SR1, I2C1->SR2);
    MODIFY_REG(I2C1->DR, I2C_DR_DR, (uint8_t) WHO_AM_I_REG);
    //while (!READ_BIT(I2C1->SR1, I2C_SR1_TXE)){};
    xprintf("READ COMPLETE :)\n");
    SET_BIT(I2C1->CR1, I2C_CR1_START);
    MODIFY_REG(I2C1->DR, I2C_DR_DR, GY521_ADDR | READ_I2C);
    xprintf("WHOAMI::%d", I2C1->DR);
    return 0;
}

void query_i2c1(uint8_t cmd, uint16_t sz){
    xprintf("query_i2c1: start\n");

    CLEAR_BIT(I2C1->CR1, I2C_CR1_POS); //положение ACK/PEC в двух байтовой конфигурации в Master.
    SET_BIT(I2C1->CR1, I2C_CR1_ACK);   //разрешает отправлять ACK/NACK после приема байта адреса или данных.

    //start
    //addr slave + mode write
    //send cmd
    //start again + mode read 
    //read in buf
    //stop on end sym

    xprintf("send start bit\n");
    SET_BIT(I2C1->CR1, I2C_CR1_START); 
    while(!READ_BIT(I2C1->CR1, I2C_SR1_SB));
    (void) I2C1->SR1; (void) I2C1->SR2; //???
    
    xprintf("send addr+mode bit\n");
    MODIFY_REG(I2C1->DR, I2C_DR_DR, (GY521_ADDR | WRITE_I2C));
    while(!READ_BIT(I2C1->SR1, I2C_SR1_ADDR));
    (void) I2C1->SR1; (void) I2C1->SR2;
    
    xprintf("send cmd bit\n");
    MODIFY_REG(I2C1->DR, I2C_DR_DR, cmd);
    uint16_t msg2 =  I2C1->SR1;
    xprintf("sr::%x\n", msg2);
    //if(READ_BIT(I2C1->SR1, I2C1_SR1_STOPF)) xprintf("STOPF");
    xprintf("TXE check:\n");
    while(!READ_BIT(I2C1->SR1, I2C_SR1_TXE));

    xprintf("send start bit again\n");
    SET_BIT(I2C1->CR1, I2C_CR1_START); 
    while(!READ_BIT(I2C1->CR1, I2C_SR1_SB));
    (void) I2C1->SR1; (void) I2C1->SR2; //???
    
    xprintf("send read bit\n");
    MODIFY_REG(I2C1->DR, I2C_DR_DR, (GY521_ADDR | READ_I2C));
    while(!READ_BIT(I2C1->SR1, I2C_SR1_ADDR));
    (void) I2C1->SR1; (void) I2C1->SR2; 
    
    xprintf("try to read bits\n");
    for(uint16_t i = 0; i<sz; ++i){
        if(i<sz-1){
            while(!READ_BIT(I2C1->SR1, I2C_SR1_RXNE)); 
            rdbuf[i] = READ_BIT(I2C1->DR, I2C_DR_DR);
        } else {
            CLEAR_BIT(I2C1->CR1, I2C_CR1_ACK);
            SET_BIT(I2C1->CR1, I2C_CR1_STOP);
            while(!READ_BIT(I2C1->SR1, I2C_SR1_RXNE));
            rdbuf[i] = READ_BIT(I2C1->DR, I2C_DR_DR);
        }
    } 
    xprintf("query_i2c1: end\n");
}
