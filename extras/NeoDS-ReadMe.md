# NeoDS 0.2.1 Documentation

This emulator requires NeoGeo roms to be converted from `.zip` files to `.neo` roms using the NeoDS converter Windows application. Once converted, the `.neo` files can be placed into `/ROMs/neogeo`

## Converting NeoGeo ROMs for NeoDS: Step 1 - BIOS 
First, download the converter program here: https://github.com/DS-Homebrew/NeoDS/blob/master/NeoDsConvert/NeoDsConvert.exe

Obtain a NeoGeo BIOS zip - `neogeo.zip`. This zip *must*, at minimum, have the following files inside: 

- `sm1.sm1`
- `000-lo.lo`
- `sfix.sfx`

If your `neogeo.zip` has an `sfix.sfix` file instead of `sfix.sfx`, simply rename the file to `sfix.sfx` using an archive program like 7-Zip.

We will be configuring NeoDS to use the Universe BIOS, as this enables lots of nice features like switching between home and arcade mode, and cheats. When using the Universe BIOS, the converter application expects a `uni-bios.rom` to be inside `neogeo.zip`. Your BIOS zip should have multiple uni-bios files inside it. Open `neogeo.zip` and find the latest version of uni-bios, `uni-bios_4_0.rom`. Rename this file to `uni-bios.rom`.

You should now have all the files necessary to package NeoDS roms. Make a folder somewhere on your PC. Place the `NeoDsConvert.exe` program and the prepared `neogeo.zip` inside this folder. Open the folder in your file manager, and click on the address bar. Clear everything in the address bar, type in `cmd`, and then hit the Enter key. Inside the Command Prompt window that popped up, type the following: `NeoDsConvert.exe -bios8`, and hit Enter.

Check the folder where you placed `neogeo.zip`. If everything went well, there should now be a `neogeo.neo` file there. This means you are read to start converting actual game ROMs.

## Converting NeoGeo ROMs for NeoDS: Step 2 - Game ROMs
Next, you will need to obtain NeoGeo ROMs to play on NeoDS. NeoDS uses the same ROM sets as MAME, so you should be able to find MAME ROMs that will be compatible with NeoDS.

Note that while MAME roms work, NeoDS converter expects all files inside the game zip to be `.bin` files. If you got a ROM zip that has files other than `.bin` inside, simply rename them to `.bin`. We will use the game "Waku Waku 7" as an example:

The following `wakuwak7.zip` will work: [(Image)](https://i.imgur.com/K2k5tU8.png)

The following `wakuwak7.zip` will NOT work: [(Image)](https://i.imgur.com/5iMmtxV.png)

Once you have your game zip ready, copy it into the same folder as `neogeo.zip` and `NeoDsConvert.exe`. While viewing the folder in your file manager, click on the address bar. Clear everything in the address bar, type in `cmd`, then hit Enter key. Inside the Command Prompt window that popped up, type the following: `NeoDsConvert.exe -bios8`, and hit Enter. This will convert all game ROMs in the current folder to `.neo` files using the Universe BIOS.

Lastly, take the converted `.neo` files, and place them in `/ROMs/neogeo` on your flashcart's SD card. Boot into AOS, Launch NeoDS, then highlight the ROM file you'd like to play and hit the Start button to load the ROM.
