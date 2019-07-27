# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 9.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := XOS_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := Pie
ROM_FINGERPRINT := halogenOS/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)

CUSTOM_PROPERTIES := \
    ro.rom.name=halogenOS \
    ro.rom.build_date=$(CUSTOM_BUILD_DATE) \
    ro.rom.build_type=$(CUSTOM_BUILD_TYPE) \
    org.pixelexperience.build_date=$(CUSTOM_BUILD_DATE) \
    org.halogenos.version=$(CUSTOM_VERSION_PROP) \
    org.halogenos.build_date=$(CUSTOM_BUILD_DATE) \
    org.halogenos.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.halogenos.build_type=$(CUSTOM_BUILD_TYPE) \
    org.halogenos.fingerprint=$(ROM_FINGERPRINT) \
    ro.xos.version=$(CUSTOM_PLATFORM_VERSION)_$(CUSTOM_BUILD_DATE)
