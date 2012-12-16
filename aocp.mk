## Specify phone tech before including full_phone
$(call inherit-product, vendor/aocp/configs/gsm.mk)

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCPOTA.apk



# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := aocp_mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
