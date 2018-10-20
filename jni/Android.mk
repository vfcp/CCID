LOCAL_PATH := $(call my-dir)

LIBUSB_PATH := $(LOCAL_PATH)/../../libusb

# libusb
include $(CLEAR_VARS)
LOCAL_MODULE := libusb
LOCAL_SRC_FILES := $(LIBUSB_PATH)/android/libs/$(TARGET_ARCH_ABI)/libusb1.0.so
LOCAL_EXPORT_C_INCLUDES := $(LIBUSB_PATH)/libusb
include $(PREBUILT_SHARED_LIBRARY)

include $(LOCAL_PATH)/libccid.mk
