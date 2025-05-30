# AOS - Ace OS repackaged for Ace3DS+/Gateway/R4iLS/EX4DS

https://github.com/flashcarts/AOS

AOS is a multi-loader for Ace3DS+ and related carts.

This repository aims to re-pack the official AOS software by ace3ds.com with new and updated homebrew apps; it is in no way affiliated with ace3ds.com.

### Currently supported flashcarts

- AOS_Ace3DSPlus:
    - Ace3DS+
    - Ace3DS X
- AOS_Gateway:
    - Gateway Blue
    - R4infinity 2
- AOS_R4iLS:
    - R4iLS
    - r4isdhc.com.cn
    - r4isdhc.hk 2021+
    - ge.ndsi.in GEi HOT
- AOS_EX4DS:
    - EX4DS
 
The following carts can be either an Ace3DS+ or an R4iLS:

- XXX in 1 carts
- Unlabeled carts with a red PCB - [(Image)](https://www.flashcarts.net/assets/images/ds_carts/ace3ds-nolabel.png)
- Flashcarts labeled as a game - [(Image)](https://i.imgur.com/SNVieqW.png)

If you have one of these carts, you will need to grab an empty SD card, insert it into the cart, and boot the cart on your DS.

- If you get a missing `_DS_MENU.DAT` error, you need the Ace3DS+ package.
- If you get stuck at a loading screen, or get a missing `_DSMENU.DAT` error, you need the R4iLS package.
- If you get a `MENU?` screen, you have a DSTTi timebomb clone and can't use AOS. These carts use [YSMenu](https://gbatemp.net/download/retrogamefan-multi-cart-update.35737/).

### Currently bundled applications

- [A8DS](https://github.com/wavemotion-dave/A8DS)
- [StellaDS](https://github.com/wavemotion-dave/StellaDS)
- [A5200DS](https://github.com/wavemotion-dave/A5200DS)
- [A7800DS](https://github.com/wavemotion-dave/A7800DS)
- [ColecoDS](https://github.com/wavemotion-dave/ColecoDS)
- [NesDS](https://github.com/DS-Homebrew/NesDS)
- [GBARunner2 DSL Enhanced](https://github.com/unresolvedsymbol/GBARunner2-DSL-Enhanced)
- [GBARunner3](https://nightly.link/Gericom/GBARunner3/workflows/nightly/develop/GBARunner3.zip)
- [GBARunner3 Frontend](https://github.com/flashcarts/gbar3-frontend)
- [GameYob](https://github.com/Stewmath/GameYob)
- [jEnesisDS](http://www.workingdesign.de/projects/jenesisds.php) ([archive](http://web.archive.org/web/20220813181438/http://www.workingdesign.de/projects/jenesisds.php))
- [MoonShell 2.10](http://home.att.ne.jp/blue/moonlight) ([archive](http://web.archive.org/web/20111018193827/http://home.att.ne.jp:80/blue/moonlight/))
- [NeoDS](https://groups.google.com/g/neods)
- [NGPDS](https://github.com/FluBBaOfWard/NGPDS)
- [NitroGrafx](https://github.com/FluBBaOfWard/NitroGrafx)
- [S8DS](https://github.com/FluBBaOfWard/S8DS)
- [SNEmulDS](https://bitbucket.org/Coto88/snemulds)

### Setup

1. Identify your cartridge and choose the correct package version based on the supported carts list above.
2. Download the appropriate .zip file for your cart from the [releases page.](https://github.com/flashcarts/AOS/releases/latest)
3. Extract and copy the *contents* of the zip file to your flashcart's SD card root.
4. A lot of the emulators included in this package require a BIOS file, or can use one to improve compatibility. You can obtain the BIOS files for each emulator and place them in the appropriate locations, like so (expected file name is in parentheses):

- BIOS **Required for Use**
   - GBARunner3 - (`bios.bin`) - `/_gba`
   - ColecoDS (`coleco.rom`) - `/roms/bios`

- BIOS **Optional**, but Highly Recommended:
   - A8DS (`atarixl.rom`, `atariosb.rom`, or `ataribas.rom`) - `/roms/bios`
   - A5200DS (`5200.rom`) - `/roms/bios`
   - A7800DS (`highscore.rom` - for 7800 High Score saving) - `/roms/bios`
   - GBARunner2 (`bios.bin`) - `/_gba`
   - GameYob (`gbc_bios.bin` - provides color in GBC titles) - `/roms/gb/`
   - NGPDS (Color BIOS: `ngp-color-bios.ngp` - Black and White BIOS: `ngp-bnw-bios.ngp`) - `/roms/bios`
      - The names and location of the Neo Geo Pocket BIOS files can be changed within settings. Those provided above have been pre-set for use in AceOS.
   - S8DS - See [GitHub ReadMe](https://github.com/FluBBaOfWard/S8DS), multiple BIOSes supported.

### Notes on Emulators in This Package
- While GBARunner2 will work without a BIOS, GBARunner3 **will not** until one is placed in `_gba`. Be sure to add a GameBoy Advance BIOS before using it.
- JenesisDS requires ROMs to be in `.gen`, `.bin`, or `.smd` format to be recognized in the file browser. If you have `.md` ROMs, rename them to `.gen` or `.bin` before placing them in `/ROMs/gen` on your SD card.
- NeoDS requires ROMs to be converted to `.neo` format before they can be used. [See this README before using.](https://github.com/flashcarts/AOS/blob/master/extras/NeoDS-ReadMe.md)

### Theming
- To use the AOS-Dark theme in releases, simply download `AOS_Dark_Theme.zip`, and extract it. From the extracted files, copy `theme.res` and `setting.ini` to `/__rpg/extention`. Replace the existing files.
- You may also customize the theme or make your own. The `theme.res` file is an uncompressed zip file. You can simply rename `theme.res` to `theme.zip` to open it and edit the files inside. It contains the menu icons and backgrounds.
- To edit the colors and layouts, edit `setting.ini` with Notepad or any other text editor.

---

### Packaging steps

0. You *must* be on Linux
    - WSL2 works. MSYS2 (provided by devkitPro) probably also works, but no guarantee is provided
1. Set up [devkitPro's NDS environment](https://devkitpro.org/wiki/Getting_Started)
1. Run `./build.sh`
1. Individual kernel files will appear in `out` folder


### Credits

- [Ace3DS](http://www.ace3ds.com): AOS 2.13, Wood kernel
- All external application developers as seen in above list
