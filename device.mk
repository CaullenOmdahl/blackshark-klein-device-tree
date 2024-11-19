#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/blackshark/klein

# A/B OTA Postinstall Configuration
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot Control HAL Configuration
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# Boot Control HAL Shared Libraries (updated to remove deprecated static libraries)
PRODUCT_PACKAGES += \
    bootctrl.kona \
    libgptutils \
    libz \
    libcutils

# Update Engine and OTA Scripts
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Set product properties for build type and version
PRODUCT_DEVICE := klein
PRODUCT_NAME := twrp_klein
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := SHARK KLE-H0
PRODUCT_MANUFACTURER := blackshark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="KLE-H0-user 11 KLEN2108271OS00MR0 V11.0.4.0.JOYUI release-keys"

BUILD_FINGERPRINT := blackshark/KLE-H0/klein:11/KLEN2108271OS00MR0/V11.0.4.0.JOYUI:user/release-keys
