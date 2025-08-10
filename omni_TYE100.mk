#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TYE100 device
$(call inherit-product, device/qcom/TYE100/device.mk)

PRODUCT_DEVICE := TYE100
PRODUCT_NAME := omni_TYE100
PRODUCT_BRAND := iFLYTEK
PRODUCT_MODEL := TYE100_P
PRODUCT_MANUFACTURER := qcom

PRODUCT_GMS_CLIENTID_BASE := android-qcom

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P118F-user 8.1.0 OPM1.171019.026 eng.root.20220722.152104 test-keys"

BUILD_FINGERPRINT := Android/P118F/P118F:8.1.0/OPM1.171019.026/root07221521:user/test-keys
