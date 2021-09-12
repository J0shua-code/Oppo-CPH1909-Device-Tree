FDEVICE="CPH1909"
add_lunch_combo omni_"$FDEVICE"-eng
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export PLATFORM_VERSION="16.1.0"
   	export PLATFORM_SECURITY_PATCH="2099-12-31"
   	export TW_DEFAULT_LANGUAGE="en"
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_VANILLA_BUILD=1
	
	
	# use magisk 21.4 for the magisk addon
	export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v23.0.zip

	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
   	

    # use system (ROM) fingerprint where available
    export OF_USE_SYSTEM_FINGERPRINT=1

	
    # -- add settings for R11 --
    export FOX_R11=1
    export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"


	# run a process after formatting data to work-around MTP issues
	export OF_RUN_POST_FORMAT_PROCESS=1
fi
#
