DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-lineage

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/raviole/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

TARGET_PREBUILT_KERNEL := device/google/raviole-kernel/Image.lz4
