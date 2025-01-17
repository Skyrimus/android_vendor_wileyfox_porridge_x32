LOCAL_PATH := $(call my-dir)

$(info copying SHARED proprietary blobs)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_MODULE_OWNER := MediaTek
LOCAL_SRC_FILES_32 := proprietary/lib/libaudiocustparam.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_OWNER := MediaTek
LOCAL_SRC_FILES_32 := proprietary/lib/libdpframework.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WFCamera
LOCAL_SRC_FILES := WFCamera/WFCamera.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_APPS)
LOCAL_OVERRIDES_PACKAGES := Camera2

include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libstagefright_color_conversion
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SHARED_LIBRARIES_32 = libdpframework
LOCAL_SRC_FILES_32 = libstagefright_color_conversion/libstagefright_color_conversion_32.a
include $(BUILD_PREBUILT)
