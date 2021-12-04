DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# Kernel
TARGET_PREBUILT_KERNEL := device/google/raviole-kernel/Image.lz4

# Radio
DEVICE_MANIFEST_FILE += \
    device/google/raviole/manifest_radio.xml
