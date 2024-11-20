# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Set the target architecture
export TARGET_ARCH=arm64

# Set A/B device flag
export FOX_AB_DEVICE=1

export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export ALLOW_MISSING_DEPENDENCIES=true

# Enable LZMA compression for the ramdisk (optional)
export OF_USE_LZMA_COMPRESSION=1

# Set the default theme for TWRP
export TW_THEME=portrait_hdpi   
export COMMON_LUNCH_CHOICES
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/bootdevice/by-name/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/bootdevice/by-name/vendor"
export FOX_RECOVERY_BOOT_PARTITION="/dev/block/bootdevice/by-name/boot"
export OF_FBE_METADATA_MOUNT_IGNORE=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_PATCH_AVB20=1
