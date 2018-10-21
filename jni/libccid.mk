LOCAL_PATH := $(call my-dir)

# libccid

include $(CLEAR_VARS)

LIBCCID_ROOT_REL := ..
LIBCCID_ROOT_ABS := $(LOCAL_PATH)/..

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/.. \
	$(LIBCCID_ROOT_ABS)/src \
	$(LIBCCID_ROOT_ABS)/PCSC/src/PCSC \

LOCAL_SRC_FILES:= \
	$(LIBCCID_ROOT_REL)/src/ccid.c \
        $(LIBCCID_ROOT_REL)/src/commands.c \
        $(LIBCCID_ROOT_REL)/src/ifdhandler.c \
        $(LIBCCID_ROOT_REL)/src/utils.c \
        $(LIBCCID_ROOT_REL)/src/ccid_usb.c \
        $(LIBCCID_ROOT_REL)/src/towitoko/atr.c \
        $(LIBCCID_ROOT_REL)/src/towitoko/pps.c \
        $(LIBCCID_ROOT_REL)/src/openct/buffer.c \
        $(LIBCCID_ROOT_REL)/src/openct/checksum.c \
        $(LIBCCID_ROOT_REL)/src/openct/proto-t1.c \
        $(LOCAL_PATH)/tokenparser.c \
        $(LIBCCID_ROOT_REL)/src/strlcpy.c \
        $(LIBCCID_ROOT_REL)/src/simclist.c \
        $(LIBCCID_ROOT_REL)/src/debug.c \

LOCAL_CFLAGS := \
	-DANDROID \
	-DPCSCD_PATH='"$(PCSCD_PATH)"' \
	-DHAVE_CONFIG_H

LOCAL_EXPORT_C_INCLUDES := $(LIBPCSCLITE_ROOT_ABS)/

LOCAL_MODULE_TAGS = eng
LOCAL_MODULE:= libccid
LOCAL_LDLIBS := -llog -ldl -lc
LOCAL_SHARED_LIBRARIES := libusb1.0
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
