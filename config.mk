ifeq ($(TARGET_GAPPS_ARCH),)
$(error "GAPPS: TARGET_GAPPS_ARCH is undefined")
endif

ifneq ($(TARGET_GAPPS_ARCH),arm)
ifneq ($(TARGET_GAPPS_ARCH),arm64)
$(error "GAPPS: Only arm and arm64 are allowed")
endif
endif

TARGET_MINIMAL_APPS ?= false

$(call inherit-product, vendor/gapps/common-blobs.mk)

# Include package overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/gapps/overlay/

# framework
PRODUCT_PACKAGES += \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.widevine.software.drm

ifeq ($(IS_PHONE),true)
PRODUCT_PACKAGES += \
    com.google.android.dialer.support
endif

# app
PRODUCT_PACKAGES += \
    CalculatorGooglePrebuilt \
    Chrome \
    FaceLock \
    GoogleCalendarSyncAdapter \
    GoogleContactsSyncAdapter \
    GoogleExtShared \
    GoogleTTS \
    LatinIMEGooglePrebuilt \
    PrebuiltDeskClockGoogle \
    talkback

ifeq ($(IS_PHONE),true)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

ifeq ($(TARGET_MINIMAL_APPS),false)
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    Photos
endif

# priv-app
PRODUCT_PACKAGES += \
    AndroidMigratePrebuilt \
    AndroidPlatformServices \
    ConfigUpdater \
    GoogleBackupTransport \
    GoogleContacts \
    GoogleExtServices \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePackageInstaller \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCorePi \
    SetupWizard \
    StorageManagerGoogle \
    Turbo

ifeq ($(IS_PHONE),true)
PRODUCT_PACKAGES += \
    GoogleDialer
endif

ifeq ($(TARGET_MINIMAL_APPS),false)
PRODUCT_PACKAGES += \
    Velvet
endif
