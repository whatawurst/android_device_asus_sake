#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

### INHERIT FROM SM8350-COMMON
include device/asus/sm8350-common/BoardConfigPlatform.mk
include vendor/asus/sake/BoardConfigVendor.mk

DEVICE_PATH := device/asus/sake

PRODUCT_PLATFORM := sm8350

TARGET_OTA_ASSERT_DEVICE := sake,i006d

### KERNEL
ifeq ($(WITH_MAGISK),true)
  TARGET_KERNEL_CONFIG := sm8350-sake_magisk_defconfig
else
  TARGET_KERNEL_CONFIG := sm8350-sake_defconfig
endif

### PARTITIONS
# /proc/partitions shows the size in 1024-byte blocks
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296 # 98 MB
BOARD_DTBOIMG_PARTITION_SIZE := 25165824 # 24 MB
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296 # 98 MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 243766472704 # 230GB

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

### DISPLAY
TARGET_SCREEN_DENSITY := 440

### PROPS
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
