#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := lineage_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := realme
PRODUCT_MODEL := 7 Pro
PRODUCT_MANUFACTURER := realme


PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="atoll-user 11 RKQ1.200903.002/ eng.root.04080114.013112 release-keys" \
    BuildFingerprint=qti/atoll/atoll:11/RKQ1.200903.002/root04080114:user/release-keys \
    DeviceProduct=RMX2170 \
    SystemName=RMX2170

# Target
TARGET_SUPPORTS_QUICK_TAP := true

