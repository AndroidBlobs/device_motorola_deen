# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from deen device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := deen
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_deen
PRODUCT_MODEL := deen

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := deen
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 8 OCK28.47-32 d162 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 8.1.0/OCK28.47-32/d162:user/release-keys
