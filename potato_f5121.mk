# Copyright 2014 The Android Open Source Project
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

TARGET_BOOTANIMATION_SIZE := 1080p

TARGET_KERNEL_CONFIG := aosp_loire_suzu_defconfig

# Inherit device parts
$(call inherit-product, device/sony/suzu/aosp_f5121.mk)

TARGET_KERNEL_CONFIG := aosp_loire_suzu_defconfig

# Inherit from those products. Most specific first.
# $(call inherit-product, device/sony/suzu/device.mk)
# $(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit Potato Stuff
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Override Product Name

PRODUCT_NAME := potato_f5121
PRODUCT_MODEL := Xperia X

#Inherit ROM parts
$(call inherit-product, device/sony/common/potato.mk)