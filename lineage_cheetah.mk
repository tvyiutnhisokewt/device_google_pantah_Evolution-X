#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)

include device/google/pantah/cheetah/device-lineage.mk
include device/google/pantah/cheetah/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := cheetah

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
