# IDE Integration

### Adding 8BitMixtape-NEO Board to the Arduino IDE

Add this line to your **Additional Board Manager URLs** in the Preferences \(click on the little square on the right to open an editable list\):

> [http://8bitmixtape.github.io/package\_8bitmixtape\_index.json](http://8bitmixtape.github.io/package_8bitmixtape_index.json)

![](images/instructions/8BitMixtapePackage_add.jpg)

Now you can choose in the Board Manager the new package for **8Bit Mixtape**. You will get noticed if new updates are available.

![](images/instructions/8BitMixtapePackage_BoardManageer.jpg)

### Choose Board

Now a new package is available in your menu to choose board **"8BitMixtapeNEO"** At the moment there are various Core and Bootloader to choose from, just use the standard ones on the top of the list. The others are currently there for testing and developing.

> Bootloader: **TinyAudioBoot Audio:PB3/PIN2 Led:PB1/PIN6**
>
> Core: **Arduino Core 16MHz \(PLL/NO.BOD\)**

### Compile -&gt; Convert -&gt; Upload

It's working...! Just press the upload arrow. It will automatically compile and convert to .wav and play the file on your sound card.!

### Save the .wav in sketch folder

In the menu "Sketch" choose -&gt; "Export compiled Binary.

The .wav file will be saved in the same folder where your sketch .ino file is stored, which is usually in your Sketchbook. This is mostly useful if you wanna share the .wav file to friends, put it on your website \(or on a cassette tape\) for others to upload directly to their tapes without re-compiling using this IDE or something.

