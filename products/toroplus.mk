# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/c1pher/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/toroplus

# Setup device specific product configuration.
PRODUCT_NAME := c1pher_torospr
PRODUCT_NAME := c1pher_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Torospr specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
