DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-calyx

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/raviole/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml \
    device/google/raviole/permissions/permissions_com.google.euiccpixel.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.google.euiccpixel.xml

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/raviole/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

TARGET_PREBUILT_KERNEL := device/google/raviole-kernel/Image.lz4

# Radio
DEVICE_MANIFEST_FILE += \
    device/google/raviole/manifest_radio.xml
