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

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hiphi device
$(call inherit-product, device/motorola/hiphi/device.mk)

PRODUCT_DEVICE := hiphi
PRODUCT_NAME := twrp_hiphi
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hiphi-user 12 S3SHS32.12-42-11-5 bf0951 release-keys"

BUILD_FINGERPRINT := motorola/hiphi/hiphi:12/S3SHS32.12-42-11-5/bf0951:user/release-keys
