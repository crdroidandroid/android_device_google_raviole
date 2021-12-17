# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/raviole/device-statix.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.017 7955197 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.017/7955197:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
