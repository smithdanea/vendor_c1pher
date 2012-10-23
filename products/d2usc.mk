# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/c1pher/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_d2usc
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2usc
PRODUCT_MODEL := SCH-R530U
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT=samsung/d2usc/d2usc:4.0.4/IMM76D/R530UVXALI4:user/release-keys PRIVATE_BUILD_DESC="d2usc-user 4.0.4 IMM76D R530UVXALI4 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
