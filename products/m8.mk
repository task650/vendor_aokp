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

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/m8/m8-vendor.mk)

# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/htc/m8/full_m8.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Setup device specific product configuration
PRODUCT_NAME := aokp_m8
PRODUCT_BRAND := google
PRODUCT_DEVICE := m8
PRODUCT_MODEL := HTC One m8
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
       BUILD_ID=KOT49H BUILD_FINGERPRINT="htc/htc_europe/htc_m8:4.4.2/KOT49H/325784.5:user/release-keys" \
       PRIVATE_BUILD_DESC="1.54.401.5 CL325784 release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_task650.zip:system/media/bootanimation.zip
