# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/c1pher/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/hercules

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_hercules
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := hercules
PRODUCT_MODEL := SGH-T989
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLH1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLH1 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/c1pher/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

