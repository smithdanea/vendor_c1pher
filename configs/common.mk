$(call inherit-product-if-exists, vendor/c1pher/prebuilt/prebuilts.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/c1pher/overlay/common

# T-Mobile theme engine
include vendor/c1pher/configs/themes_common.mk

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    LatinImeDictionary \
    Microbes \
    MusicFX \
    MusicVisualization \
    NoiseField \
    openvpn \
    PhaseBeam \
    ROMControl \
    SuperSU \
#    SwagPapers \
#    UnicornPorn

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/c1pher/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/c1pher/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/c1pher/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/c1pher/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/c1pher/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/c1pher/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/c1pher/configs/common_versions.mk
