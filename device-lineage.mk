DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1.vendor \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.ccc@1.0.vendor \
    hardware.google.bluetooth.sar@1.1.vendor

# Codec2
PRODUCT_PACKAGES += \
    libavservices_minijail_vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libmedia_ecoservice.vendor

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui@1.0.vendor \
    android.hardware.confirmationui@1.0-lib.trusty

# HIDL
PRODUCT_PACKAGES += \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor:64

# Nos
PRODUCT_PACKAGES += \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64

# Power
PRODUCT_PACKAGES += \
    vendor.google.google_battery@1.1.vendor:64 \
    vendor.google.wireless_charger@1.3.vendor:64

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

# Tinycompress
PRODUCT_PACKAGES += \
    libtinycompress

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal:64

# Misc Interfaces
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor \
    android.hardware.biometrics.fingerprint-V1-ndk_platform.vendor \
    android.hardware.drm@1.4.vendor \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.oemlock@1.0.vendor \
    android.hardware.input.classifier@1.0.vendor:64 \
    android.hardware.neuralnetworks-V1-ndk_platform.vendor \
    android.hardware.neuralnetworks@1.3.vendor \
    android.hardware.power@1.2.vendor \
    android.hardware.radio@1.6.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.1.vendor \
    android.hardware.tetheroffload.config@1.0.vendor \
    android.hardware.tetheroffload.control@1.1.vendor \
    android.hardware.weaver@1.0.vendor \
    android.hardware.wifi@1.5.vendor

# Misc Interfaces
PRODUCT_PACKAGES += \
    com.google.hardware.pixel.display-V3-ndk_platform.vendor \
    pixelpowerstats_provider_aidl_interface-cpp.vendor \
    libaudioroutev2.vendor \
    libcppbor.vendor \
    libGralloc4Wrapper \
    libexynosv4l2 \
    libexynosutils \
    libkeymaster4support.vendor \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libsfplugin_ccodec_utils.vendor \
    libtrusty_metrics

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.singlereg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.singlereg.xml

# Telephony
PRODUCT_PACKAGES += \
    ImsServiceEntitlement \
    Iwlan

# Rescue Mode
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.disable_rescue=true

# Properties
TARGET_VENDOR_PROP := device/google/raviole/vendor.prop

# Touch
include hardware/google/pixel/touch/device.mk

$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
