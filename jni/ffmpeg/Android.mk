LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_SHARED_LIBRARIES := libavutil libavcodec libavformat libpostproc libswscale libavfilter
LOCAL_MODULE := ffmpeg

include $(BUILD_SHARED_LIBRARY)
include $(call all-makefiles-under,$(LOCAL_PATH))
