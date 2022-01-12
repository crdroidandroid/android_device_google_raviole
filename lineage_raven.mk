# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/device-lineage.mk)
$(call inherit-product, device/google/raviole/aosp_raven.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.sys.disable_rescue=true \
ro.control_privapp_permissions=log

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7888514 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.016.A1/7888514:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
