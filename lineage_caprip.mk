#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from caprip device
$(call inherit-product, device/motorola/caprip/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_caprip
PRODUCT_DEVICE := caprip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2129-1
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_NAME := caprip_retail

# Build info
BUILD_FINGERPRINT := "motorola/caprip_retail/caprip:12/S0RCS32.41-10-19-12/7653b:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="caprip_retail-user 12 S0RCS32.41-10-19-12 7653b release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
