$(call inherit-product, device/moto/stingray/full_stingray.mk)

$(call inherit-product, vendor/c1pher/configs/common_tablet.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := c1pher_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=IML74K BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys PRIVATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys" BUILD_NUMBER=221360

PRODUCT_COPY_FILES +=  \
    vendor/c1pher/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
