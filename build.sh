# prep
rm -rf out

# make flashcart dirs
mkdir -p out/acep
mkdir -p out/r4it
mkdir -p out/r4xx

# copy AOS
cp aos_base/aos_acep.dat out/acep/_ds_menu.dat
cp aos_base/aos_r4it.dat out/r4it/_dsmenu.dat
cp aos_base/aos_r4xx.dat out/r4xx/_dsmenu.dat

# copy kernel files
cp -r kernel/__rpg out/acep/__rpg
cp -r kernel/__rpg out/r4it/__rpg
cp -r kernel/__rpg out/r4xx/__rpg
cp kernel/wood_acep.dat out/acep/wood.dat
cp kernel/wood_r4it.dat out/r4it/wood.dat
cp kernel/wood_r4xx.dat out/r4xx/wood.dat

# copy AOS configuration files
cp -r aos_configs out/acep/__rpg/extention
cp -r aos_configs out/r4it/__rpg/extention
cp -r aos_configs out/r4xx/__rpg/extention

# prep for app copy
mkdir -p out/acep/__rpg/APP
mkdir -p out/r4it/__rpg/APP
mkdir -p out/r4xx/__rpg/APP

# copy moonshl2
cp -r moonshell_210/moonshl2 out/acep/moonshl2
cp -r moonshell_210/moonshl2 out/r4it/moonshl2
cp -r moonshell_210/moonshl2 out/r4xx/moonshl2
# and the loader to where it needs to go
cp moonshell_210/moonshl2.nds out/acep/__rpg/APP/moonshl2.nds
cp moonshell_210/moonshl2.nds out/r4it/__rpg/APP/moonshl2.nds
cp moonshell_210/moonshl2.nds out/r4xx/__rpg/APP/moonshl2.nds
