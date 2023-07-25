#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from eqs device
$(call inherit-product, device/motorola/eqs/device.mk)

PRODUCT_DEVICE := eqs
PRODUCT_NAME := twrp_eqs
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 ultra
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=eqs_ge \
    PRIVATE_BUILD_DESC="eqs_ge-user 12 S3SQS32.16-72-31-3 47c58c-b5d541 release-keys"

BUILD_FINGERPRINT := motorola/eqs_ge/msi:12/S3SQS32.16-72-31-3/47c58c-b5d541:user/release-keys
