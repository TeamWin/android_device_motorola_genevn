#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP Device Tree Generator
# Copyright (C) 2019-Present A-Team Digital Solutions
# Copyright (C) 2024 sosRR
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),genevn)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
