# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := android.hardware.light@2.0-service.9810
LOCAL_INIT_RC := android.hardware.light@2.0-service.9810.rc
LOCAL_SRC_FILES := service.cpp \
    Light.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    liblog \
    libdl \
    libhidlbase \
    libhidltransport \
    libhardware \
    libutils \
    android.hardware.light@2.0

include $(BUILD_EXECUTABLE)
