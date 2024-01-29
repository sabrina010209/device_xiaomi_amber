#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/amber/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_amber
PRODUCT_DEVICE := amber
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 21081111RG

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="amber_global-user 12 SP1A.210812.016 V14.0.5.0.TKWMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/amber_global/amber:12/SP1A.210812.016/V14.0.5.0.TKWMIXM:user/release-keys

# Add Elixir Flags
ELIXIR_MAINTAINER := Ziad
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := Ziad
BUILD_HOSTNAME := Elixir
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
