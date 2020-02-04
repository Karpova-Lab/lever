//Version 20200204

#define F_CPU 1000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <avr/power.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>

#define duty_cycle OCR1B
#define retract_default 1700
#define extend_default 1250 

uint16_t *config_start_address  = (uint16_t *) 0;

uint16_t retracted_pos;
uint16_t extended_pos; 

int main(void) {
  clock_prescale_set(clock_div_8); // set frequency to 1MHz

  //read data from EEPROM
  retracted_pos = eeprom_read_word(config_start_address);
  if (retracted_pos == 65535){
    retracted_pos = retract_default;
    eeprom_update_word(config_start_address, retracted_pos);
  }
  extended_pos = eeprom_read_word(config_start_address+1);
  if (extended_pos == 65535){
    extended_pos = extend_default;
    eeprom_update_word(config_start_address+1, extended_pos);
  }


  // Timer 0 Setup
  TCCR0B |= (1<<CS02) | (1<<CS00); // set timer frequency to clk/1024 ~ We can count from 0-261.12 ms with 1.024ms resolution

  // PWM Timer setup
  TCCR1B |= (1<<CS10); // set timer frequency to clk/1 ~ Each tick is 1 µs
  // Wave generation mode 14, using ICR1 as TOP
  TCCR1A |= (1<<WGM11);
  TCCR1B |= (1<<WGM13) | (1<<WGM12);
  // set output
  TCCR1A |= (1<<COM1B1) | (1<<COM1A1); // non-inverting output
  DDRA |= (1<<PA5) | (1<<PA3); //signal that goes to servo and output for LED
  // initialize pwm period and duty cycle duration
  ICR1 =20600; // adjusted to 20ms = 50Hz PWM
  OCR1B = retracted_pos;


  while (1) {
    if (PINA & (1<<PA4)){ //
      duty_cycle = extended_pos;
      if (PINB & (1<<PB2)){ // we're getting an adjustment signal
        TCNT0 = 0;
        PORTA |= (1<<PA3);
        while(PINB & (1<<PB2)){
        }
        extended_pos = extend_default - TCNT0;
        eeprom_update_word(config_start_address + 1, extended_pos);
        PORTA &= ~(1<<PA3);
      }
    }
    else{
      duty_cycle = retracted_pos;
      if (PINB & (1<<PB2)){ // we're getting an adjustment signal
        TCNT0 = 0;
        PORTA |= (1<<PA3);
        while(PINB & (1<<PB2)){
        }
        retracted_pos = retract_default + TCNT0;
        eeprom_update_word(config_start_address, retracted_pos);
        PORTA &= ~(1<<PA3);
      }
    }
    _delay_ms(1);

  }


  return 0;
}
