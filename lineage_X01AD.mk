#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := lineage_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01AD
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01AD \
    PRODUCT_NAME=WW_X01AD \
    PRIVATE_BUILD_DESC="coral-user 11 RQ1A.210105.003 7005429 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/coral/coral:11/RQ1A.210105.003/7005429:user/release-keys"
