//Version 20200204

#define F_CPU 1000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <avr/power.h>
#include <avr/interrupt.h>

#define duty_cycle OCR1B

uint16_t retracted_pos = 1800;
uint16_t extended_pos = 1150;

int main(void) {
  clock_prescale_set(clock_div_8); // set frequency to 1MHz

  // Timer setup
  TCCR1B |= (1<<CS10); // set prescale of 1=
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
    if ((PINA & (1<<PA4))){ //
      duty_cycle = extended_pos;
      PORTA |= (1<<PA3);
    }
    else{
      duty_cycle = retracted_pos;
      PORTA &= ~(1<<PA3);
    }
    _delay_ms(1);
  }


  return 0;
}
