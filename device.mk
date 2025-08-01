#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7125-common
$(call inherit-product, device/realme/sm7125-common/common.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/realme/RMX2170/RMX2170-vendor.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/odm/,$(TARGET_COPY_OUT_ODM)/etc) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/vendor/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/svi_config_206B1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/svi_config_206B1.xml

# Init scripts
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.RMX2170.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.RMX2170.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_FULL_TREBLE_OVERRIDE := true
