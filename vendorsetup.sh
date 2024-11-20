# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_LUNCH_CHOICES := \
    twrp_klein-user \
    twrp_klein-userdebug \
    twrp_klein-eng

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
