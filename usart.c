#include "usart.h"
#include "i2c.h"
#include "core/stm32f1xx.h"
extern int8_t rdbuf[];

void init_usart1(){
    RCC->APB2ENR |= RCC_APB2ENR_USART1EN; //clock usart
    RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;   //clock gpioa
    //RCC->APB2ENR |= RCC_APB2ENR_AFPAEN;    //clock alter fun A ///non matched
    
    GPIOA->CRH |= (0b00 << GPIO_CRH_MODE10_Pos);//input mode
    GPIOA->CRH |= (0b01 << GPIO_CRH_CNF10_Pos); //input with pull up pull down
    GPIOA->CRH |= (0b01 << GPIO_CRH_MODE9_Pos); //10 MHz
    GPIOA->CRH |= (0b10 << GPIO_CRH_CNF9_Pos); //alt fun push pull
    
    USART1->BRR = 7500; //4800 //72000000 / 9600 / 16; //baudrate (72 000 000 / 19200) /16 = 235.375 = 0xEA //234!! //FIXME ahb1 = 36MHz 
    
    USART1->CR1 |= USART_CR1_TE; //transmitter enable
    USART1->CR1 |= USART_CR1_RE; //reciever enable
    USART1->CR1 |= USART_CR1_RXNEIE; //enable rxneie interrupt
    USART1->CR1 |= (0b0 << USART_CR1_PCE_Pos); //disable parity control res = 0
    USART1->CR1 |= (0b0 << USART_CR1_M_Pos); //8 bit mode
    USART1->CR1 |= (0b0 << USART_CR1_SBK_Pos); //1 break chr 
    USART1->CR1 |= USART_CR1_UE; //usart enable

    NVIC_EnableIRQ(USART1_IRQn);     //enable usart interrupts
    init_xprintf();
}

void putc_usart1(char c){
    while(!(USART1->SR & USART_SR_TXE)); //transmit data reg empty
    USART1->DR = c;
    while(!(USART1->SR & USART_SR_TC)); //transmit complete
}

char getc_usart1(){
    while(!(USART1->SR & USART_SR_RXNE));
    uint8_t unsd = USART1->DR;
}

void init_xprintf(){
    xdev_out(putc_usart1);
    xdev_in(getc_usart1);
}

void send_usart1(char* msg, uint16_t sz){
    for(uint16_t tec = 0; tec<sz; ++tec){putc_usart1(msg[tec]);}
}

void USART1_IRQHandler(void){ 
    if((USART1->SR & USART_SR_RXNE)){ uint8_t geted = getc_usart1();
        //#define MODE_USART1_CHARACTER_LIST
        //#define MODE_USART1_ECHO
        //#define MODE_USART1_XPRINTF
        #define MODE_USART1_I2C_TEST

        #ifdef MODE_USART1_CHARACTER_LIST
        char msg = 0;
        for(int i = 0; i<255; ++i){
            send_usart1(&msg, 1);
            ++msg;
        } msg = 0;
        #endif

        #ifdef MODE_USART1_ECHO
        putc_usart1(geted);
        #endif

        #ifdef MODE_USART1_XPRINTF
        xprintf("Hello\n");
        #endif

        #ifdef MODE_USART1_I2C_TEST
        //uint8_t cmd = WHO_AM_I_REG;
        //write_i2c1(&cmd, 1);
        
        getWhoAmI();
        //query_i2c1(WHO_AM_I_REG, 1);
        putc_usart1(rdbuf[0]);
        #endif
    } 
}
