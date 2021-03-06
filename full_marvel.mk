# Copyright (C) 2009 The Android Open Source Project
# Copyright (C) 2014 Olivier K.
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

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call our device's makefile.
$(call inherit-product, device/htc/marvel/marvel.mk)

# Install Google Apps if requested
# I_WANT_GAPPS := true
ifeq ($(I_WANT_GAPPS),true)
MINI_GAPPS := true
$(call inherit-product-if-exists, vendor/google/gapps_armv6_tiny.mk)
endif

PRODUCT_DEVICE := marvel
PRODUCT_NAME := full_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S A510e
PRODUCT_MANUFACTURER := HTC
PRODUCT_CHARACTERISTICS := phone
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel
