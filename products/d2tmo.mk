# Inherit AOSP device configuration for d2tmo.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/c1pher/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.1.1 JRO03L T999UVDLH3 release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.1.1/JRO03L/T999UVDLH3:user/release-keys"

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
