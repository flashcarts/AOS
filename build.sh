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
cp -r extras/data out/flashcart_base/data
cp extras/snemul.cfg out/flashcart_base

# make flashcart dirs
mkdir -p out/acep
mkdir -p out/r4it
mkdir -p out/r4xx
mkdir -p out/ex4ds

# copy base to all flashcart dirs
cp -r out/flashcart_base/* out/acep/
cp -r out/flashcart_base/* out/r4it/
cp -r out/flashcart_base/* out/r4xx/
cp -r out/flashcart_base/* out/ex4ds/

# copy flashcart specific moonshl2 reset files
cp moonshell_210/reset_files/R4TF-ACEP.nds out/acep/moonshl2/resetmse/R4TF.nds
cp moonshell_210/reset_files/R4TF-ACEP.nds out/ex4ds/moonshl2/resetmse/R4TF.nds
cp moonshell_210/reset_files/R4TF-R4iLS.nds out/r4xx/moonshl2/resetmse/R4TF.nds
cp moonshell_210/reset_files/R4TF-R4iLS.nds out/r4it/moonshl2/resetmse/R4TF.nds

# [EX4] Replace AOS theme with EX4DS theme
rm out/ex4ds/__rpg/extention/theme.res
cp extras/ex4ds/AOS/setting.ini out/ex4ds/__rpg/extention
cd ex4ds_theme
zip -Z store -r ../out/ex4ds/__rpg/extention/theme.res *
cd ..

# copy ex4ds specific features
cp -r extras/ex4ds/_ex4mov_ out/ex4ds/_ex4mov_
cp -r extras/ex4ds/_plugin_/* out/ex4ds/__rpg/extention/_plugin_
cp -r extras/ex4ds/Wood/ui/* out/ex4ds/__rpg/ui
cp extras/ex4ds/Wood/globalsettings.ini out/ex4ds/__rpg/globalsettings.ini

# copy flashcart specific files
r4denc -k 0x4002 aos_base/aos_acep.nds out/acep/_ds_menu.dat
r4denc -k 0x4002 aos_base/aos_r4it.nds out/r4it/_dsmenu.dat
r4denc -k 0x4002 aos_base/aos_r4xx.nds out/r4xx/_dsmenu.dat
r4denc -k 0x484a aos_base/aos_acep.nds out/ex4ds/_ds_menu.dat
r4denc -k 0x4002 kernel/wood_acep.nds out/acep/wood.dat
r4denc -k 0x4002 kernel/wood_r4it.nds out/r4it/wood.dat
r4denc -k 0x4002 kernel/wood_r4xx.nds out/r4xx/wood.dat
r4denc -k 0x4002 kernel/wood_r4xx.nds out/ex4ds/wood.dat

# Extra _dsmenu.dat for EX4 soft-reset
cp out/ex4ds/_ds_menu.dat out/ex4ds/_dsmenu.dat

# package optional dark theme
mkdir out/aos_dark_theme
cd aos_dark_theme
zip -Z store -r ../out/aos_dark_theme/theme.res {calendar,icon,icons.bmp,logo.bmp,version}
cp setting.ini ../out/aos_dark_theme/setting.ini
cd ..

