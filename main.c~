#include "core/stm32f1xx.h"
#include "core/stm32f103xb.h"
#include "core/system_stm32f1xx.h"
#include "system_handlers.h"
#include "usart.h"
#include "i2c.h"

static void config_hse(){
    RCC->CR &= ~RCC_CR_HSEBYP;
    RCC->CR |= RCC_CR_HSEON;
    while(!(RCC->CR & RCC_CR_HSERDY_Msk));
}

void config_ahb(){
    RCC->CFGR |= RCC_CFGR_HPRE_DIV1;
}
void config_pwr(){
    RCC->APB1ENR |= RCC_APB1ENR_PWREN_Msk; //apb1 pwr enable
}
void config_apb1(){
    RCC->CFGR &= (0b000 << RCC_CFGR_PPRE1_Pos);
    RCC->CFGR |= (0b000 << RCC_CFGR_PPRE1_Pos); //no div
}

void config_flash(){
    FLASH->ACR |= FLASH_ACR_LATENCY_1; 
}

void config_usb(){
    RCC->CFGR |= (0b0 << RCC_CFGR_USBPRE_Pos); //no prescsaler for usb
}

void config_adc(){
    RCC->CFGR |= RCC_CFGR_ADCPRE_DIV6; //
}

void config_apb2(){
    RCC->CFGR |= (0b000 << RCC_CFGR_PPRE2_Pos);
}

void config_pll(){
    RCC->CFGR &= (0b00 << RCC_CFGR_PLLXTPRE_Pos);
    RCC->CFGR |= (0b00 << RCC_CFGR_PLLXTPRE_Pos); //HSE divider for PLL entry
    
    RCC->CFGR &= (0b00 << RCC_CFGR_PLLSRC_Pos); //HSE oscillator clock selected as PLL input clock
    RCC->CFGR |= (0b01 << RCC_CFGR_PLLSRC_Pos); //HSE oscillator clock selected as PLL input clock

    RCC->CFGR &= (0b0000 << RCC_CFGR_PLLMULL_Pos);
    RCC->CFGR |= (0b0111 << RCC_CFGR_PLLMULL_Pos); //set mul 9
    
    RCC->CR |= RCC_CR_PLLON; //enable pll
    while(!(RCC->CR & RCC_CR_PLLRDY));
}

void config_sysclock(){
    RCC->CFGR |= (0b10 << RCC_CFGR_SW_Pos); // pll source of sysclock
    while(!(RCC->CFGR & RCC_CFGR_SWS_PLL)); 
}

void config_afio(){
    RCC->APB2ENR |= RCC_APB2ENR_AFIOEN;
    AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_1;
}


void config_led(){
    RCC->APB2ENR |= (0b01 << RCC_APB2ENR_IOPCEN_Pos);
    GPIOC->CRH |= (0b00 << GPIO_CRH_CNF13_Pos);
    GPIOC->CRH |= (0b10 << GPIO_CRH_MODE13_Pos);
}

void init_base(){
    config_hse();
    config_pll();
    config_ahb();
    //config_apb1();
    config_apb2();
    //config_adc();
    //config_flash();
    config_sysclock();
    config_led();
}

void enable_led(){
    //(*(volatile unsigned short *)(0x40011014)) = (1 << 13);
    GPIOC->BSRR = GPIO_BSRR_BS13;  
}

void disable_led(){
    //(*(volatile unsigned int *)(0x40011010)) = (1 << 13);//disable
    GPIOC->BSRR = GPIO_BSRR_BR13;
}

void toggle_led(){
        enable_led();  for (int i = 0; i < 1000000; ++i) __asm__("nop");
        disable_led(); for (int i = 0; i < 1000000; ++i) __asm__("nop");
}

void main(){ init_base(); init_usart1(); init_i2c1();
    while(1) {
        //char msg[] = "hello ";
        //usart1_send(msg, 6);
        toggle_led();}
}








//GPIOC->ODR ^= (1 << 13); // no work without loop



uint32_t ticks;

//void systick_handler(){ticks++;}

void delay_ms(uint32_t milliseconds)
{
  uint32_t start = ticks;
  uint32_t end = start + milliseconds;

  if (end < start) // handle overflow
  {
    while (ticks > start); // wait for ticks to wrap around to zero
  }

  while (ticks < end);
}

