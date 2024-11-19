#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),klein)

# Include all sub-directory makefiles for modular builds
include $(call all-subdir-makefiles, $(LOCAL_PATH))

# Include common recovery settings
include $(CLEAR_VARS)

LOCAL_MODULE := recovery
LOCAL_SRC_FILES := $(LOCAL_PATH)/recovery.cpp
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_RECOVERY_ROOT)/sbin
LOCAL_CERTIFICATE := platform

include $(BUILD_EXECUTABLE)

endif