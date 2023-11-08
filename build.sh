# prep
rm -rf out

# make flashcart base folder
# stuff will be copied here, then copied to respective flashcart dirs
mkdir -p out/flashcart_base

# copy kernel files, make empty cheat folder
cp -r kernel/__rpg out/flashcart_base/__rpg
mkdir -p out/flashcart_base/__rpg/cheats

# copy AOS configuration files
cp -r aos_configs out/flashcart_base/__rpg/extention

# build AOS theme
cd aos_theme
zip -Z store -r ../out/flashcart_base/__rpg/extention/theme.res *
cd ..

# prep for app copy
mkdir -p out/flashcart_base/__rpg/APP

# copy moonshl2
cp -r moonshell_210/moonshl2 out/flashcart_base/moonshl2
# and the loader to where it needs to go
cp moonshell_210/moonshl2.nds out/flashcart_base/__rpg/APP/moonshl2.nds

# copy other apps that aren't yet pulled from official sites
cp -r extras/APP/* out/flashcart_base/__rpg/APP/
cp -r extras/ROMs out/flashcart_base/ROMs
cp -r extras/NitroGrafx out/flashcart_base/NitroGrafx
cp extras/snemul.cfg out/flashcart_base

# make flashcart dirs
mkdir -p out/acep
mkdir -p out/r4it
mkdir -p out/r4xx

# copy base to all flashcart dirs
cp -r out/flashcart_base/* out/acep/
cp -r out/flashcart_base/* out/r4it/
cp -r out/flashcart_base/* out/r4xx/

# copy flashcart specific files
r4denc -k 0x4002 aos_base/aos_acep.nds out/acep/_ds_menu.dat
r4denc -k 0x4002 aos_base/aos_r4it.nds out/r4it/_dsmenu.dat
r4denc -k 0x4002 aos_base/aos_r4xx.nds out/r4xx/_dsmenu.dat
r4denc -k 0x4002 kernel/wood_acep.nds out/acep/wood.dat
r4denc -k 0x4002 kernel/wood_r4it.nds out/r4it/wood.dat
r4denc -k 0x4002 kernel/wood_r4xx.nds out/r4xx/wood.dat
