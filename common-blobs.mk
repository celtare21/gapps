PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gapps/lib,system/lib)
ifeq ($(TARGET_GAPPS_ARCH),arm64)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gapps/lib64,system/lib64)
endif
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/gapps/usr,system/usr)

PRODUCT_COPY_FILES += \
    vendor/gapps/etc/default-permissions/default-permissions.xml:system/etc/default-permissions/default-permissions.xml \
    vendor/gapps/etc/default-permissions/opengapps-permissions.xml:system/etc/default-permissions/opengapps-permissions.xml \
    vendor/gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/gapps/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml \
    vendor/gapps/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/gapps/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/gapps/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/gapps/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml

ifeq ($(IS_PHONE),true)
PRODUCT_COPY_FILES += \
    vendor/gapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml
endif
