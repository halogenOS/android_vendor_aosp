# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017-2018 The LineageOS Project
# Copyright (C) 2019 The halogenOS Project
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

BUILD_RRO_SYSTEM_PACKAGE := $(CUSTOM_VENDOR_DIR)/build/core/system_rro.mk
# To exclude lineage-specific things without deleting everything
PRODUCT_IS_LINEAGE := false

# Rules for QCOM targets
include $(CUSTOM_VENDOR_DIR)/build/core/qcom_target.mk
