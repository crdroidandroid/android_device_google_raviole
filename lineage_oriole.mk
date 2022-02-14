# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ1D.220205.003 8069835 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ1D.220205.003/8069835:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
