# AOS - Ace OS repackaged for Ace3DS+/Gateway/R4iLS

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

### Currently bundled applications

- [A8DS](https://github.com/wavemotion-dave/A8DS)
- [StellaDS](https://github.com/wavemotion-dave/StellaDS)
- [A5200DS](https://github.com/wavemotion-dave/A5200DS)
- [A7800DS](https://github.com/wavemotion-dave/A7800DS)
- [ColecoDS](https://github.com/wavemotion-dave/ColecoDS)
- [NesDS](https://github.com/DS-Homebrew/NesDS)
- [GBARunner2 DSL Enhanced](https://github.com/unresolvedsymbol/GBARunner2-DSL-Enhanced)
- [GameYob](https://github.com/Stewmath/GameYob)
- [jEnesisDS](http://www.workingdesign.de/projects/jenesisds.php) ([archive](http://web.archive.org/web/20220813181438/http://www.workingdesign.de/projects/jenesisds.php))
- [MoonShell 2.10](http://home.att.ne.jp/blue/moonlight) ([archive](http://web.archive.org/web/20111018193827/http://home.att.ne.jp:80/blue/moonlight/))
- [NeoDS](https://groups.google.com/g/neods)
- [NitroGrafx](https://github.com/FluBBaOfWard/NitroGrafx)
- [S8DS](https://github.com/FluBBaOfWard/S8DS)
- [SNEmulDS](https://bitbucket.org/Coto88/snemulds)


### Packaging steps

0. You *must* be on Linux
    - WSL2 works. MSYS2 (provided by devkitPro) probably also works, but no guarantee is provided
1. Set up [devkitPro's NDS environment](https://devkitpro.org/wiki/Getting_Started)
1. Run `./build.sh`
1. Individual kernel files will appear in `out` folder


### Credits

- [Ace3DS](http://www.ace3ds.com): AOS 2.13, Wood kernel
- All external application developers as seen in above list
