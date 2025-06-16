include $(call all-makefiles-under,$(call my-dir))

ifeq ($(TARGET_INCLUDE_LAWNCHAIR),true)
  PRODUCT_PACKAGES += \
    Lawnchair \
    LawnchairOverlay \
    Lawnicons

  PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.lawnchair=1
else
  PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.lawnchair=0
endif

# Prebuilt packages
ifeq ($(TARGET_INCLUDE_SIMPLE_TUNE),true)
  PRODUCT_PACKAGES += \
    SimpleTune
endif
