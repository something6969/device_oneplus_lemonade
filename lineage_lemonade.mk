# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lemonade device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := oneplus
PRODUCT_NAME := lineage_lemonade
PRODUCT_MODEL := LE2113

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := lemonade
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220205.002 8010174 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:12/SQ1A.220205.002/8010174:user/release-keys
