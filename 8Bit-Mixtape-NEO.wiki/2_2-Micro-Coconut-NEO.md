# NEO Coconut

## Concept design

![](images/boards/NEO-Prog-Coconut_micro.jpg)

## Ready for Manufacturing?

coming soon...

# Gär Lämpli

Based on this new attiny bootloader and a minimal board to check / follow a fermentation curve time/temp profile and show by different colors.

Working on it for the upcoming [Koji and Miso workshop](http://wlu18www30.webland.ch/wiki/Miso) at Dimension Plus Lab in Taipei.

## Adding Sensors 

* DS18B20 is a water-proofed sensor based on the [Maxim 1-Wire Digital Thermometer](https://datasheets.maximintegrated.com/en/ds/DS18B20.pdf).

```
ROM = 28 4D 95 3 0 0 80 40
  Chip = DS18B20
  Data = 1 72 1 FF FF 7F FF FF FF C5  CRC=C5
  Temperature = 23.12 Celsius, 73.62 Fahrenheit
ROM = 28 FF F2 B8 70 16 5 76
  Chip = DS18B20
  Data = 1 47 2 55 0 7F FF C 10 16  CRC=16
  Temperature = 36.44 Celsius, 97.59 Fahrenheit
```

# Make Your Own Board

## 1-sided, SMD version for Breadboard

![](images/boards/MakeYourOwn_SMD_Edition_finished.jpg)

see more on how to make it [here](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/wiki/MYOB---Make-Your-Own-Board)

![](images/boards/Pins_NEO-Coconut_v03.jpg)

### Mask for etching

**NEO-Coconut v0.3**

![](images/boards/MakeYourOwn_v03_MASK.png)

### Notes
* increase pad size a bit
* 

