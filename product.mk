# Integrate MindTheGapps into the build
ifneq ($(INCLUDE_GAPPS),false)
    ifeq ($(TARGET_ARCH),arm64)
        $(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
    else
        $(call inherit-product-if-exists, vendor/gapps/arm/arm-vendor.mk)
    endif
    WITH_GMS := true
endif
