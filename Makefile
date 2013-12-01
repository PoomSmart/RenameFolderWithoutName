GO_EASY_ON_ME = 1
export SDKVERSION = 5.0
include theos/makefiles/common.mk
export ARCHS = armv7
TWEAK_NAME = RFWN
RFWN_FILES = Tweak.xm
include $(THEOS_MAKE_PATH)/tweak.mk
