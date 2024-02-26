// for scl sca 
//      pin clock
//      pin mode alt/std
//      pin mode push/drain
// for i2c:
//      clock
//      analog filter
//      dig filter
//      settiming
//      DisableClockStretching
//      setMasterAdresingMode
//      setMode (i2c or smbus)
//      enable
// transfer:
//          start bit
//          
//      TXIS
//      send 0x00 //
//      TXIS
//      send data
//      TC flag check
//#define MODIFY_REG(REG, CLEARMASK, SETMASK)  WRITE_REG((REG), (((READ_REG(REG)) & (~(CLEARMASK))) | (SETMASK)))
//#define WRITE_REG(REG, VAL)   ((REG) = (VAL))


#define GY_521_ADDR  0x68 //0xD0
#define I2C_OWNADDR1_7BIT 0x000040000U
#define I2C_MODE_I2C      0x000000000U
#define I2C_REQ_READ      0x0
#define I2C_REQ_WRITE     0x1
#define WHO_AM_I_REG 0X75

void config_i2c_gpio(){
    RCC->APB2ENR |= (0b01 << RCC_APB2ENR_IOPBEN_Pos);

    GPIOB->CRL |= (0b11 << GPIO_CRL_CNF6_Pos);
    GPIOB->CRL |= (0b11 << GPIO_CRL_MODE6_Pos);

    GPIOB->CRL |= (0b11 << GPIO_CRL_CNF7_Pos);
    GPIOB->CRL |= (0b11 << GPIO_CRL_MODE7_Pos);
}

void config_i2c_clock()
()
    RCC->APB1ENR |= (0b1 << RCC_APB1ENR_I2C1EN_Pos);  
}
void config_i2c_speed(){
    I2C1->CR2 |= (36 << I2C_CR2_FREQ_Pos);
    I2C1->TRISE |= (36+1 << I2C_TRISE_TRISE_Pos);
    I2C1->CCR = (I2C1->CCR & ~(I2C_CCR_CCR | I2C_CCR_FS | I2C_CCR_DUTY)) | 180;
}


void config_i2c_settings(){
    I2C1->OAR2 |= (0b0 << I2C_OAR2_ENDUAL_Pos); //dual mode disabled
    I2C1->CR1 |= (0b0 << I2C_CR1_ENGC_Pos); //широковещательный general
    I2C1->CR1 |= (0b0 << I2C_CR1_NOSTRETCH_Pos); //clock stretching enabled
    I2C1->OAR1 = (I2C1->OAR1 & ~(I2C_OAR1_ADDMODE | I2C_OAR1_ADD0 | I2C_OAR1_ADD1_7 | I2C_OAR1_ADD8_9)) | 0X00004000U;
    I2C1->OAR2 = (I2C1->OAR2 & ~(I2C_OAR2_ADD2)) | 0; //2st own addr
    I2C1->CR1 = (I2C1->CR1 & ~(I2C_CR1_SMBUS | I2C_CR1_SMBTYPE | I2C_CR1_ENARP)) | I2C_MODE_I2C; //useleess lor
    
    I2C1->CR1 |= (0b0 << I2C_CR1_PE); //disable periph
    config_i2c_speed();
    //I2C1->OAR2 |= (0b0 << I2C1_ADDMODE_Pos); //no udal mode
    I2C1->CR1 |= (0b0 << I2C_CR1_SMBUS_Pos); //i2c mode, not smmbus
    I2C1->CR1 |= (0b1 << I2C_CR1_PE_Pos); //enable periph
    I2C1->CR1 |= (0b1 << I2C_CR1_ACK_Pos); //единица в этом бите разрешает отправлять ACK/NACK после приема байта адреса или данных.
    I2C1->CR1 |= (0b1 << I2C_CR1_PE); //disable periph
}

void config_i2c(){
    config_i2c_gpio();
    config_i2c_clock();
    config_i2c_settings();
}

void write_i2c(uint8_t* buf, uint16_t sz){
    I2C1->CR1 &=~I2C_CR1_POS; //clean
    I2C1->CR1 |= I2C_CR1_ACK;
    
    I2C1->CR1 |= I2C_CR1_START;    //send start bit
    while(!(I2C1->SR1 & I2C_SR1_SB)); //check start bit 

    I2C1->DR = (I2C1->DR & ~(I2C_DR_DR)) | (GY_521_ADDR | I2C_REQ_WRITE); //send slave addr
    while(!(I2C1->SR1 & I2C_SR1_ADDR)); //addres sent(master mode)
    
        //I2C1->DR &=~ I2C_DR_DR;
    for(int i = 0; i<sz; ++i){
        I2C1->DR |= buf[i];
        while(!(I2C1->SR1 & I2C_SR1_TXE));
    } 

    I2C1->CR1 |= I2C_CR1_STOP;
}

void read_i2c(uint8_t* buf, uint16_t sz){
    I2C1->CR1 &=~I2C_CR1_POS; //clean 
    I2C1->CR1 |= I2C_CR1_ACK;
    //ET
    while(!(I2C1->SR1 & I2C_SR1_SB)); //check start bit



    I2C1->DR = (I2C1->DR & ~(I2C1_DR_DR)) | (GY521_ADDR | I2C_REQ_WRITE); //send slave addr
    while(!(I2C1->SR1 & I2C_SR1_ADDR)); //addres send(master mode)
    I2C1->CR1 |= I2C_CR1_STOP;

    I2C1->CR1 |= I2C_CR1_START;    //send start bi
    while(!(I2C1->SR1 & I2C_SR1_SB)); //check start bit 
    I2C1->DR = (I2C1->DR & ~(I2C_DR_DR)) | (GY_521_ADDR | I2C_REQ_READ); //send slave addr
    while(!(I2C1->SR1 & I2C_SR1_ADDR)); //addres sent(master mode)
    
    for(int i = 0; i<sz; ++i){
        if(i<sz-1){
            while(!(I2C1->SR1 & I2C_SR1_RXNE));
            buf[i] = I2C_DR_DR;}
        else{
            I2C1->CR1 &=~ I2C_CR1_ACK;
            I2C1->CR1 |= I2C_CR1_STOP;
            while(!(I2C1->SR1 & I2C_SR1_RXNE));
            buf[i] = I2C_DR_DR;
        }
    } 
}

GPIO_CRL_CNF6_1
