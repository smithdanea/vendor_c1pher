# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/c1pher/configs/gsm.mk)

# Inherit Fascinate overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/fascinate

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := fascinatemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_FINGERPRINT=verizon/SCH-I500/SCH-I500:2.3.5/GINGERBREAD/EI20:user/release-keys PRIVATE_BUILD_DESC="SCH-I500-user 2.3.5 GINGERBREAD EI20 release-keys"

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
