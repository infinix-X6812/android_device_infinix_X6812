#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/X6812/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_X6812
PRODUCT_DEVICE := X6812
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := INFINIX
PRODUCT_MODEL :=  Hot 11s

PRODUCT_SYSTEM_DEVICE := Infinix-X6812
PRODUCT_SYSTEM_NAME := X6812

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_infinix-user 11 RP1A.200720.011 435920 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Infinix/TSSI/FULL-64:11/RP1A.200720.011/230921V472:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
