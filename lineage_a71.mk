# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a71 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a71
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a71
PRODUCT_MODEL := SM-A715F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a71
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a71zh-user 12 SP1A.210812.016 A715FZHU8CVB6 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a71zh/a71:11/RP1A.200720.012/A715FZHU8CVB6:user/release-keys
