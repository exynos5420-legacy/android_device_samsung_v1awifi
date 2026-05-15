#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit from v1a-common
include device/samsung/v1a-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/v1awifi

# Assert
TARGET_OTA_ASSERT_DEVICE := v1awifi

# Kernel
TARGET_KERNEL_CONFIG := lineageos_v1awifi_defconfig


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19456000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28378660864

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_COPY_OUT_VENDOR := vendor

BOARD_SUPER_PARTITION_SIZE := 2299998208
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2299998208
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 2295803904
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system

# Inherit from the proprietary version
-include vendor/samsung/v1awifi/BoardConfigVendor.mk
