#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2025 The OrangeFox Recovery Project
#
	export ALLOW_MISSING_DEPENDENCIES=true
	export LC_ALL="C"

    #OFR build settings & info
    export TARGET_DEVICE_ALT="RMX3852,RMX3851,RMX3800,RMX3850,RMX3853,RE5CA6L1,RE5C46L1,RE5C37,RE5C39L1,RE5C4FL1,RE606FL1"
	export FOX_SETTINGS_ROOT_DIRECTORY=/persist/OFRP

    #OFR binary files
	export FOX_DELETE_AROMAFM=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_GREP_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_ASH_IS_BASH=1
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	export FOX_USE_BASH_SHELL=1
	export FOX_USE_NANO_EDITOR=1

	#Other
	export FOX_ENABLE_APP_MANAGER=1

	#OTA
    export FOX_VIRTUAL_AB_DEVICE=1
