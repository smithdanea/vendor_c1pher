$(call inherit-product, vendor/c1pher/configs/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher \
    Torch

# Inherit drm blobs
-include vendor/c1pher/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
