SERIAL=/dev/tty.wchusbserial14130

CC=avr-gcc -v
MCU=atmega328p
SYSROOT=
#CFLAGS= -Os -DF_CPU=16000000UL -mmcu=atmega328p
CFLAGS=-g -Wall -mcall-prologues -mmcu=$(MCU) -DF_CPU=16000000UL -Os
LDFLAGS=-Wl,-gc-sections -Wl,-relax
#CFLAGS= -DF_CPU=16000000UL -mmcu=atmega328p

led.o: led.c

.PHONY: clean

clean:
	rm -f *.hex *.o led
