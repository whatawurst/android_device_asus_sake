$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)

# Inherit device configuration
$(call inherit-product, device/asus/sake/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sake
PRODUCT_DEVICE := sake
PRODUCT_BRAND := ASUS
PRODUCT_MODEL := I006D
PRODUCT_VERSION := 30.11.51.67
PRODUCT_MANUFACTURER := asus
PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_$(PRODUCT_MODEL) \
    PRODUCT_DEVICE=$(PRODUCT_BRAND)_$(PRODUCT_MODEL) \
    PRODUCT_MODEL=$(PRODUCT_BRAND)_$(PRODUCT_MODEL)

BUILD_FINGERPRINT := asus/WW_$(PRODUCT_MODEL)/$(PRODUCT_BRAND)_$(PRODUCT_MODEL):11/RKQ1.201022.002/$(PRODUCT_VERSION):user/release-keys

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
