# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Set the target architecture
export TARGET_ARCH=arm64

# Set A/B device flag
export FOX_AB_DEVICE=1

# Enable MIUI-specific flags
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"
export OF_NO_MIUI_PATCH_WARNING="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"

# Enable TWRP Recovery Image Builder
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export ALLOW_MISSING_DEPENDENCIES=true

# Enable LZMA compression for the ramdisk (optional)
export OF_USE_LZMA_COMPRESSION=1

# Set the default theme for TWRP
export TW_THEME=portrait_hdpi

# Define recovery partitions
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_RECOVERY_BOOT_PARTITION="/dev/block/bootdevice/by-name/boot"

# Debugging options
export FOX_INSTALLER_DEBUG_MODE="1"
export FOX_BUILD_DEBUG_MESSAGES="1"
export OF_IGNORE_LOGICAL_MOUNT_ERRORS="1"

# Maintainer information
export OF_MAINTAINER="Your Name"