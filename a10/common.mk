DEVICE_PACKAGE_OVERLAYS += device/samsung/a10/overlay

TARGET_BOARD_CAMERA_COUNT := 2
TARGET_BOARD_HAS_FP := false

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.a10

TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

PRODUCT_PACKAGES += \
   fstab.exynos7884B

BUILD_FINGERPRINT := "samsung/a10kx/a10:11/RP1A.200720.012/A105NKOU5CUL4:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="a10kx-user 11 RP1A.200720.012 A105NKOU5CUL4 release-keys"
