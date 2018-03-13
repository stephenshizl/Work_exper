
#set FASTBOOT_DIR=%~dp0
set FASTBOOT_DIR=%~sdp0
echo %FASTBOOT_DIR%


set ADB_CMD=%FASTBOOT_DIR%adb.exe
set FASTBOOT_CMD=%FASTBOOT_DIR%fastboot.exe

#%ADB_CMD% wait-for-device
#echo   - device connected.



%ADB_CMD% remount
%ADB_CMD% reboot bootloader


%FASTBOOT_CMD% flash modem  %FASTBOOT_DIR%\NON-HLOS.bin
%FASTBOOT_CMD% flash sbl1 %FASTBOOT_DIR%\sbl1.mbn
%FASTBOOT_CMD% flash rpm %FASTBOOT_DIR%\rpm.mbn
%FASTBOOT_CMD% flash tz %FASTBOOT_DIR%\tz.mbn
%FASTBOOT_CMD% flash sdi %FASTBOOT_DIR%\sdi.mbn

%FASTBOOT_CMD% flash aboot %FASTBOOT_DIR%\emmc_appsboot.mbn
%FASTBOOT_CMD% flash splash %FASTBOOT_DIR%\splash.img

%FASTBOOT_CMD% flash recovery %FASTBOOT_DIR%\recovery.img
%FASTBOOT_CMD% flash userdata %FASTBOOT_DIR%\userdata.img
%FASTBOOT_CMD% flash cache %FASTBOOT_DIR%\cache.img
%FASTBOOT_CMD% flash persist %FASTBOOT_DIR%\persist.img
%FASTBOOT_CMD% flash boot %FASTBOOT_DIR%\boot.img
%FASTBOOT_CMD% flash system %FASTBOOT_DIR%\system.img

%FASTBOOT_CMD% reboot

pause

