LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


$(warning "the value of LOCAL_PATH is $(LOCAL_PATH)") 
#$(warning 111 $(TARGET_BOARD_PLATFORM_PRODUCT))
#$(error 111  $(TARGET_BOARD_PLATFORM_PRODUCT))
LOCAL_MODULE := test
LOCAL_MODULE_PATH := $(LOCAL_PATH)
LOCAL_UNSTRIPPED_PATH := $(LOCAL_PATH)/nostripped
LOCAL_SRC_FILES := test.c
LOCAL_CFLAGS += -g -Wno-error -Wno-unused-const-variable -Wno-unused-variable -Wno-unused-parameter

include $(BUILD_EXECUTABLE)
