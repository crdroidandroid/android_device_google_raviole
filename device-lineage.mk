# overlay
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# Kernel
TARGET_PREBUILT_KERNEL := device/google/raviole-kernel/Image.lz4

# Libraries required for vendor
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor \
    android.hardware.biometrics.fingerprint-V1-ndk_platform.vendor \
    android.hardware.bluetooth@1.1.vendor \
    android.hardware.confirmationui@1.0.vendor \
    android.hardware.confirmationui@1.0-lib.trusty \
    android.hardware.drm@1.4.vendor \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.oemlock@1.0.vendor \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor:64 \
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
    android.hardware.wifi@1.5.vendor \
    com.google.hardware.pixel.display-V3-ndk_platform.vendor \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.ccc@1.0.vendor \
    hardware.google.bluetooth.sar@1.1.vendor \
    pixelpowerstats_provider_aidl_interface-cpp.vendor \
    libaudioroutev2.vendor \
    libavservices_minijail_vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libcppbor.vendor \
    libGralloc4Wrapper \
    libexynosv4l2 \
    libexynosutils \
    libhwbinder.vendor \
    libmedia_ecoservice.vendor \
    libkeymaster4support.vendor \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libsfplugin_ccodec_utils.vendor \
    libtinycompress \
    libtrusty_metrics \
    libwifi-hal \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64

# AiAi Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Powershare
include hardware/google/pixel/powershare/device.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Telephony
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.singlereg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.singlereg.xml

PRODUCT_PACKAGES += \
    ImsServiceEntitlement \
    Iwlan

# Touch
include hardware/google/pixel/touch/device.mk

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.disable_rescue=true

# Vendor Properties
TARGET_VENDOR_PROP := device/google/raviole/vendor.prop

$(call inherit-product, vendor/gms/products/gms.mk)
