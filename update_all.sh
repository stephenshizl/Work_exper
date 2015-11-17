###############################
####functions
###############################
adb remount;
adb reboot bootloader;

fastboot flash NON-HLOS.bin;
fastboot flash sbl1.mbn;
fastboot flash rpm.mbn;
fastboot flash tz.mbn;
fastboot flash sdi sdi.mbn;

fastboot flash aboot emmc_appsboot.mbn;
fastboot flash splash splash.img;

fastboot flash recovery recovery.img;
fastboot flash userdata userdata.img;
fastboot flash cache cache.img;
fastboot flash persist persist.img;
fastboot flash boot boot.img;
fastboot flash system system.img;

fastboot reboot
