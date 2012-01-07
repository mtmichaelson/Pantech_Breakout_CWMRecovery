USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pantech/breakout/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := breakout

BOARD_KERNEL_CMDLINE := console=ttyMSM2 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x1a400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x15980000
BOARD_FLASH_BLOCK_SIZE := 131072

# USB Mas Storage
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

TARGET_PREBUILT_KERNEL := device/pantech/breakout/kernel

BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/breakout/recovery/graphics.c

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
