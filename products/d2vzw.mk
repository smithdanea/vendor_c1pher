# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/c1pher/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/c1pher/configs/vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/d2vzw

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.0.4/IMM76D/I535VRALHE:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.0.4 IMM76D I535VRALHE release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

