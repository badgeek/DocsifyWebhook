![](images/instructions/ascii_header.jpg)

See our growing collection of [dedicated code](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/blob/master/Code/NEO_000_empty.ino/NEO_000_empty.ino.ino) to be used with the 8Bit Mixtape NEO.

and many more examples on Chris AttinySound repo:
https://github.com/ChrisMicro/AttinySound

notes:
ascii made [here](http://patorjk.com/software/taag/#p=display&h=2&f=Rectangles&t=dusjagr)

## Useful Mixtape code-snippets

### Reading the buttons

we need to improve the check button fumction. so we don't ready the button1 after release of button2.
maybe also pre-make better release / push function

### Reading the Potentiometers

Cos we don't go all the way up to Vcc, it's good to scale your ADC readout and make sure you don't get over the 10bit value of 1023. To be able that we always get the lower and upper limits better to increase the multiplyer a bit.

maybe we should only ready 8but values anyway... 10bit is sooo the future!

## Geeking with the LEDs

Seems that [Adafruit libary](https://github.com/adafruit/Adafruit_NeoPixel) works great.

## Making Sound

See other pages on [Libraries](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/wiki/4_1-Libraries)

