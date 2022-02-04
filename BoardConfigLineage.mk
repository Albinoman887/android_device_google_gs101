# Build hacks
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Build a vendorimage
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
AB_OTA_PARTITIONS += \
    vendor

# Build vendor_dlkm
BOARD_USES_VENDOR_DLKMIMAGE := true
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
AB_OTA_PARTITIONS += \
    vendor_dlkm

# vbmeta_vendor
AB_OTA_PARTITIONS += \
    vbmeta_vendor

# AVB flags
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Manifests
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/gs101/lineage_compatibility_matrix.xml
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += vendor/lineage/config/device_framework_matrix.xml


# Enable chain partition for vendor.
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3
