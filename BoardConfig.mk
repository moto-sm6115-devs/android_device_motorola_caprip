#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/motorola/sm6115-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/caprip

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := caprip

# Display
TARGET_SCREEN_DENSITY := 480

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/motorola/caprip.config

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Touch
SOONG_CONFIG_NAMESPACES += MOTO_BENGAL_TOUCH
SOONG_CONFIG_MOTO_BENGAL_TOUCH := SINGLE_TAP_PATH
SOONG_CONFIG_MOTO_BENGAL_TOUCH_SINGLE_TAP_PATH := /sys/class/touchscreen/NVT-ts/single_click
TARGET_TAP_TO_WAKE_NODE := /sys/class/touchscreen/NVT-ts/double_click

# Inherit from the proprietary version
-include vendor/motorola/caprip/BoardConfigVendor.mk
