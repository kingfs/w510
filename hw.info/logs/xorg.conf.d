10-amdgpu.conf
--------------
Section "OutputClass"
	Identifier "AMDgpu"
	MatchDriver "amdgpu"
	Driver "amdgpu"
	Option "HotplugDriver" "amdgpu"
EndSection


10-quirks.conf
--------------


Section "InputClass"
        Identifier "ThinkPad HDAPS accelerometer blacklist"
        MatchProduct "ThinkPad HDAPS accelerometer data"
        Option "Ignore" "on"
EndSection

Section "InputClass"
        Identifier "Xen Virtual Pointer axis blacklist"
        MatchProduct "Xen Virtual Pointer"
        Option "IgnoreAbsoluteAxes" "off"
        Option "IgnoreRelativeAxes" "off"
EndSection

Section "InputClass"
        Identifier "Tag trackballs as XI_TRACKBALL"
        MatchProduct "trackball"
        MatchDriver "evdev"
        Option "TypeName" "TRACKBALL"
EndSection

Section "InputClass"
        Identifier "Tag Mionix Naos 5000 mouse XI_MOUSE"
        MatchProduct "La-VIEW Technology Naos 5000 Mouse"
        MatchDriver "evdev"
        Option "TypeName" "MOUSE"
EndSection


10-radeon.conf
--------------
Section "OutputClass"
	Identifier "Radeon"
	MatchDriver "radeon"
	Driver "radeon"
EndSection

40-libinput.conf
----------------

Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection

Section "InputClass"
        Identifier "libinput keyboard catchall"
        MatchIsKeyboard "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection

Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection

Section "InputClass"
        Identifier "libinput touchscreen catchall"
        MatchIsTouchscreen "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection

Section "InputClass"
        Identifier "libinput tablet catchall"
        MatchIsTablet "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection


70-wacom.conf
-------------

Section "InputClass"
        Identifier "Wacom USB tablet class"
        MatchUSBID "056a:*"
        MatchDevicePath "/dev/input/event*"
        MatchIsTablet "true"
        Driver "wacom"
EndSection

Section "InputClass"
        Identifier "Wacom USB touchscreen class"
        MatchUSBID "056a:*"
        MatchDevicePath "/dev/input/event*"
        MatchIsTouchscreen "true"
        Driver "wacom"
EndSection

Section "InputClass"
        Identifier "Wacom USB touchpad class"
        MatchUSBID "056a:*"
        MatchDevicePath "/dev/input/event*"
        MatchIsTouchpad "true"
        Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Wacom tablet class"
	MatchProduct "Wacom|WACOM|PTK-540WL|ISD-V4"
	MatchDevicePath "/dev/input/event*"
	MatchIsTablet "true"
	Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Wacom touchscreen class"
	MatchProduct "Wacom|WACOM|PTK-540WL|ISD-V4"
	MatchDevicePath "/dev/input/event*"
	MatchIsTouchscreen "true"
	Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Wacom touchpad class"
	MatchProduct "Wacom|WACOM|PTK-540WL|ISD-V4"
	MatchDevicePath "/dev/input/event*"
	MatchIsTouchpad "true"
	Driver "wacom"
EndSection

Section "InputClass"
        Identifier "Wacom PnP device class"
        MatchPnPID "WACf*|WCOM*|WACM*|FUJ02e5|FUJ02e7|FUJ02e9"
        MatchDevicePath "/dev/input/event*"
        Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Wacom serial class"
	MatchProduct "Serial Wacom Tablet"
	Driver "wacom"
EndSection

Section "InputClass"
        Identifier "Wacom serial class identifiers"
        MatchProduct "WACf|FUJ02e5|FUJ02e7|FUJ02e9"
        Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Hanwang class"
	MatchProduct "Hanwang"
	MatchDevicePath "/dev/input/event*"
	Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Waltop class"
	MatchProduct "WALTOP"
	MatchIsTablet "on"
	MatchDevicePath "/dev/input/event*"
	Driver "wacom"
EndSection

Section "InputClass"
	Identifier "Wacom N-Trig class"
	MatchProduct "HID 1b96:0001|N-Trig Pen|N-Trig DuoSense"
	MatchDevicePath "/dev/input/event*"
	Driver "wacom"
	Option "Button2" "3"
EndSection

Section "InputClass"
        Identifier "Dell Canvas 27 Touch"
        MatchUSBID "2575:0204"
        MatchDevicePath "/dev/input/event*"
        MatchIsTouchscreen "true"
        Driver "wacom"
EndSection

Section "InputClass"
        Identifier "SurfaceGo Touch"
        MatchProduct "ELAN9038:00 04F3:261A"
        MatchDevicePath "/dev/input/event*"
        Driver "wacom"
EndSection

Section "InputClass"
        Identifier "Nuvision Solo 10 Draw"
        MatchProduct "04F3200A:00 04F3:22F7"
        MatchDevicePath "/dev/input/event*"
        Driver "wacom"
EndSection




