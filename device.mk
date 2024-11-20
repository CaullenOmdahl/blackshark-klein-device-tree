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

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# Core Packages
PRODUCT_PACKAGES += \
    bootctrl.kona \
    bootctrl.kona.recovery \
    vold \
    vdc \
    libcryptfs_hw \
    libkeymaster_portable \
    libkeystore_binder \
    libsoftkeymasterdevice \
    libsoftkeymaster \
    libkeymaster_messages \
    gatekeeperd \
    libgptutils \
    libz \
    libcutils

# Host Packages
PRODUCT_HOST_PACKAGES += \
    lpadd \
    lpmake \
    lpdump \
    lpmgr \
    liblp \
    apexd \
    apexd_boot \
    apexservice

# Shared Libraries
PRODUCT_SHARED_LIBRARIES += \
    bootctrl.kona

# Additional Packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Magisk Packages
PRODUCT_PACKAGES += \
    magiskboot \
    magisk \
    magiskhide \
    magiskinit \
    magiskpolicy

# APEX Modules
PRODUCT_PACKAGES += \
    apexd \
    apexd_boot \
    apexservice