## Dedicated 8Bit Mixtape library

https://github.com/8BitMixtape/_8Bit-Mixtape-NEO-Lib

-> forked from: https://github.com/ChrisMicro/_8Bit-Mixtape-NEO-Lib

first version... 0.0.1

**We need better names for it!**

here some suggestions:

neolib.h -> 8Bit-Mixtape-NEO.h
neobegin(); -> mixtape.begin                  

### How to use the neolib library

You also need this library installed:
[Adafruit_NeoPixel](https://github.com/adafruit/Adafruit\_NeoPixel)

Add this on top of your sketch

```
#include "neolib.h"
```

Do this in the setup()

```
void setup() 
{
  neobegin();
}
```

### functions in the library

#### Reading the interface

```
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* Specific functions of the 8Bit Mixtape NEO
 ___ _____ _ _      _____ _     _                  _____ _____ _____ 
| . | __  |_| |_   |     |_|_ _| |_ ___ ___ ___   |   | |   __|     |
| . | __ -| |  _|  | | | | |_'_|  _| .'| . | -_|  | | | |   __|  |  |
|___|_____|_|_|    |_|_|_|_|_,_|_| |__,|  _|___|  |_|___|_____|_____|
                                       |_|                           
========================================================================================================================
   _________    
  | 8Bit()  |   uint8_t   getButton()                       -> 1 left, 2 right  3 both 
  |  o___o  |   uint16_t  analogReadScaled(uint8_t channel) -> scale the adc of the voltage divider to a return value: 0..1023     
  |__/___\__|   
                
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

void neobegin();
uint8_t getButton();
uint16_t analogReadScaled(uint8_t channel);
```

#### Controlling the Pixels

You also need this library installed:
[Adafruit_NeoPixel](https://github.com/adafruit/Adafruit\_NeoPixel)



```
extern Adafruit_NeoPixel pixels;
```


```
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* Specific functions of the NEO-Pixel Library
 _____ _____ _____        _         _ 
|   | |   __|     |   ___|_|_ _ ___| |
| | | |   __|  |  |  | . | |_'_| -_| |
|_|___|_____|_____|  |  _|_|_,_|___|_|
                     |_|              
========================================================================================================================
   _________    
  | NEO()   |   void setColorAllPixel(uint32_t color)                   -> Sets all the pixels to the same color
  |  o___o  |   void displayBinrayValue(uint16_t value, uint32_t color) -> displays binary number
  |__/___\__|   uint32_t Wheel(byte WheelPos)                           -> Input a value 0 to 255 to get a color value.   
                                                                        The colours are a transition r - g - b - back to r. 
                void rainbowCycle(uint8_t wait, uint8_t rounds)         -> makes a Rainbow :-)  
                
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

void displayBinaryValue(uint16_t value, uint32_t color);
void setColorAllPixel(uint32_t color);
void rainbowCycle(uint8_t wait, uint8_t rounds, uint8_t rainbowPixels);
uint32_t Wheel(byte WheelPos);
```

#### Making sound


```
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* Specific functions of the 8Bit Mixtape NEO
 _____         _   _                    _    _____               _     
|   __|_ _ ___| |_| |_ ___    ___ ___ _| |  |   __|___ _ _ ___ _| |___ 
|__   | | |   |  _|   |_ -|  | .'|   | . |  |__   | . | | |   | . |_ -|
|_____|_  |_|_|_| |_|_|___|  |__,|_|_|___|  |_____|___|___|_|_|___|___|
      |___|                                                                                    
========================================================================================================================
   _________    
  | 8Bit(x) |   void playBeep(long freq_Hz, long duration_ms)
  |  o___o  |   
  |__/___\__|   
               
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

void playBeep(long, long)
```




# Other libraries we are looking at

## Controlling the NEO-pixels

### Conflicts of timers from these libraries?

hmmmm? how are these libs to communicate with the neo-pixel in conflict with the other key-libraries to create sound, keep the timing correct for decent techno-mucke 130BPM forever? sequencers?

What does this mean?

```
#if defined (__AVR_ATtiny85__)
  if (F_CPU == 16000000) clock_prescale_set(clock_div_1); //what is this?
#endif
  
  TCCR0B = TCCR0B & B11111000 | B00000001; //no timer pre-scaler, fast PWM
```

What is more important? Cool LEDs or good sound?

### Adafruit library

works ok...

[https://github.com/adafruit/Adafruit\\_NeoPixel](https://github.com/adafruit/Adafruit\_NeoPixel)

* seems to be a bit smaller than FastLED

* more stable

* some tststs... high-pitch is still audible on the soundport



### FastLED (forget it. only causes troubles...)

other library for controlling the Neo-pixels \(also known as WS2812B\)

* [https://github.com/FastLED/FastLED](https://github.com/FastLED/FastLED)

We might need to rewrite them to comine it with the sound-generation library. it's all about timing!

doesnt work on CocoMake7 \(yet\)

* Much more versatile color functions and pixelshaders, pre-defined colors and everything
* uses more space
* weird timing issues when in combination with the\_synth
* sometimes crashed on the attiny in combination wiht sound making
* some tststs... high-pitch is still audible on the soundport

### light_ws2812

ws2812 library by the author of micronucleus bootloader, seems very optimized and works just fine with 8BitMixtape-Neo (todo: test with CocoSynth)

[https://github.com/cpldcpu/light_ws2812](https://github.com/cpldcpu/light_ws2812)

## Making Sound

### the\_synth by illutron and dzl

[https://github.com/dzlonline/the\\_synth](https://github.com/dzlonline/the\_synth)

seems there has been an updated fork recently: https://github.com/troisiemetype/the_synth

### CocoSynth

adapted from illutron to work \(only\) on attiny85/84.

[https://github.com/CocoMake7Addons/CocoSynth](https://github.com/CocoMake7Addons/CocoSynth)

uses PB0 \(OCR0\) so some timers are disabled, but delay\(\) and millis\(\) was recoded into the CocoSynth library. timing not always so precise. also some issues with the analogRead. on the Attiny85 seems ADC is also turned off, but can be turned back on in the code.

#include <core_adc.h>`



```
//override arduino main function
//make timer and pwm available for CocoSynth
int main(void) {
//disable millis & pwm
//init();
//enable analogRead
ADC_PrescalerSelect( ADC_ARDUINO_PRESCALER );
ADC_Enable();
setup();
for (;;)
loop();
return 0;
}
```



### Chris the\_synth

added attiny85 support to fork from illutron's library. uses only 1 timer on PB1 \(for attiny85\)

[https://github.com/ChrisMicro/the\_synth](https://github.com/ChrisMicro/the\_synth)

Now sound comes out on PB1, which frees the original timer again for delay\(\) and millis\(\).

Does it sound the same? still testing...

### Other synths by Chris

See his examples here: https://github.com/ChrisMicro/AttinySound

### one-liners

usually we used OCR0, but could be easy to change. DONE!

## Other libraries to think about

### coconuts?

can we use it together with the touch library?

### Baby?

have the attiny as a midi-device?

