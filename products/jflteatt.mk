$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/samsung/jf-common \
                           vendor/aokp/overlay/samsung/msm8960-common \
                           vendor/aokp/overlay/samsung/qcom-common

# Setup device specific product configuration.
PRODUCT_NAME := aokp_jflteatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflteatt
PRODUCT_MODEL := SGH-I337
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteatt TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.2.2 JDQ39 I337UCUAMDL release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip
