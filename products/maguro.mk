# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/c1pher/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
