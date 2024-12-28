#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)

include device/google/pantah/panther/device-lineage.mk
include device/google/pantah/panther/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
