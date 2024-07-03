#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Gapps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_oriole

# Crdroid Extra Stuffs
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_IS_PIXEL := true
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true

# Use Scudo instead of Jemalloc
PRODUCT_USE_SCUDO := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
