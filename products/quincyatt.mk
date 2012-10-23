# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/c1pher/configs/gsm.mk)

# quincyatt overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/quincyatt

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_quincyatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := quincyatt
PRODUCT_MODEL := SGH-I717
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.4/IMM76D/UCLE3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.0.4 IMM76D UCLE3 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

