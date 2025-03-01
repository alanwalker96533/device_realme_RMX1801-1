#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Spark stuff
$(call inherit-product, vendor/spark/config/common.mk)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

# Spark flags
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from Realme RMX1801
$(call inherit-product, device/realme/RMX1801/device.mk)

PRODUCT_NAME := spark_RMX1801
PRODUCT_DEVICE := RMX1801
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro
PRODUCT_ARCH := arm64
DEVICE_MAINTAINER := RockTavar
PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := RMX1801
TARGET_VENDOR_DEVICE_NAME := RMX1801

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1801"
