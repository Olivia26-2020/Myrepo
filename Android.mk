LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := minicap

LOCAL_MODULE_TAGS := optional

$(info $(LOCAL_PATH))
$(info $(PLATFORM_SDK_VERSION))

LOCAL_SRC_FILES := src/minicap_mmb29m.cpp
LOCAL_CFLAGS += -march=armv7-a -mfpu=neon -mfloat-abi=softfp -flax-vector-conversions

$(info LOCAL_SRC_FILES PATH)
$(info $(LOCAL_SRC_FILES))
$(info $(PLATFORM_SDK_VERSION))


LOCAL_PRELINK_MODULE := false

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libbinder \
	libui \
	liblog \

LOCAL_SHARED_LIBRARIES += libgui
$(info $(LOCAL_SRC_FILES))
$(info CHANGE THE NAME TO minicap_mmb29m)


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \

LOCAL_CFLAGS += -DPLATFORM_SDK_VERSION=$(PLATFORM_SDK_VERSION)

include $(BUILD_SHARED_LIBRARY)
