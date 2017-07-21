![Working v10_taipei](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/raw/master/boards/images_schematics/8Bit-Mixtape_NEO_v10_giphy.gif)

## 8Bit Mixtape NEO V2.xx (Manufactured PCBs)

![](images/boards/Designs_for_Manufacturing_Gold-Black.png)

These boards are based on Schematics 0.96:
![](images/schematics/Schematic_v096_8BitMixtape-NEO.png)

See more notes on getting different designs for manufacturing on the [Shenzhen Ready Page](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/wiki/2_4-Shenzhen-Ready)

![](images/boards/8BitMixtapeNEO_v20_Minimal.jpg)

## 8Bit Mixtape NEO V1.xx (Hand-Made Boards)

### Version 1.6 Tokyo Edition

![](images/boards/TokyoEdition_inthemaking.png)

### Version 1.5 Dimension Plus Edition

![](images/boards/TapeiEdition_inthemaking.png)

### First self-etched board is working

![Making board in Taipei](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/raw/master/boards/8Bit-Mixtape-NEO_v1/Making_of_MixtapeNEO_Taipei.jpg)

**_ES IST VOLLBRACHT!_**
![](images/boards/8BitMixtapeNEO_v10_the_FIRST.jpg)

### Design

![](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/raw/master/boards/8Bit-Mixtape-NEO_v1/8BitMixtapeNEO_v10_design.jpg)

Download the [design and MASK .pdf](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/raw/master/boards/8Bit-Mixtape-NEO_v1/8BitMixtapeNEO_v11.pdf)

### V1.xx are all based on this Schematics
![](https://github.com/8BitMixtape/8Bit-Mixtape-NEO/raw/master/boards/images_schematics/schematics_v11_8Bit-Mixtape-NEO.png)

## Old development notes 

### Desiged a new Board, hand-etching and beyond for production

still fixing the last details of an optimized pin-use and schematics before designing this... this is just an empty canvas sofar.

design ideas, labels and logos are welcome to be posted here.

![](images/boards/Attiny_NEO_newPCB-empty.png)

I started from scratch again. making sure everything fits and is centered.

* plugs on top or below?
* buttons fit both 6mm and 12mm packages
* ISP possible connectivity on backside. needed at all?
* put a switch on top
* where to put the Sound-prog LED?
* Tape2Tape connector on top or below board?

Made this really nice new tool in Inkscape to be able to change the pads all at once using the "Clone" function

### 1206 or 0805?

Hmmmm in the stores in taipei, the almost don't sell any 1206 anymore...

![](images/boards/pad_size_SMD.jpg)

Hand-soldeirng of 1206 was great so far in our experience. 0805 is also still possible. but kinda small.... which leads us to the next topic:

### Shenzhen ready

think about extending the design for shenzhen style manufacturing.  
See examples from 2016: [http://wiki.sgmk-ssam.ch/wiki/Shenzhen\_Ready](http://wiki.sgmk-ssam.ch/wiki/Shenzhen_Ready)

* extra features on the backside...
* ISP smd plug?
* Extra pads on the back for adding volume poti, flat wheel.
* other gadgets and design elements?
* ### Tapes talking to each other using mini-jack cables?

The output of PB1 \(SOUND-PORT\) can also be used as CV, for Sequencer application.

The input... before we always had them as little pin-headers on the side.

* can we use stereo jack for connecting via normal cable?
* input side, left channel for CV-in, right channel for sound-prog \(or Gate-in if used\)
* remove the cap for decoupling!
  \*

### Power-management

#### main switch for off and reset

hmmm... we need that push-switch.

![](images/photos/Mini-Push.jpg)

#### Chargeable?

maybe... but the coins are too small.

#### 3V and on 16MHz -&gt; Overclocking

does that really matter? Rumours go the attiny works only on 5V when set to 16MHZ, but it seems to run fine on the 3.7V LiPo. Here some notes about this.

[https://learn.adafruit.com/introducing-trinket/16mhz-vs-8mhz-clock](https://learn.adafruit.com/introducing-trinket/16mhz-vs-8mhz-clock)

I got the feeling that the speed changes, when tweaking the brightness of the NEO-pixels.

**ToDo:**

* Should we add a voltage regulator 3.3V?
* Why?

**Pro/Con Power Regulated:**

* aref normal Vcc: voltage dividers will lead to same ratio
* Internal ARef 2.56V: leads to different readings on pot, if battery level changes.
* Brightness of LED is not at maximum \(although they are far too bright anyway.
* can we communicate with 5V devices?
* how to run it on LiPo if we want it to be on 5V?
* CV standards?

## First board design, based on Schematics 0.2

this is outdated but kept here for historic reasons and cos it looks nice!

![](https://github.com/8BitMixtape/8bitMixTape-SoundProg2085/raw/master/boards/images_schematics/85SoundProg_MixTape_V03-NEO_RedChicken.jpg)

![Making board in yogya](https://github.com/8BitMixtape/8bitMixTape-SoundProg2085/raw/master/boards/FirstPrototype_Neo03/AudioProgMixTape_MakingOf.png)




