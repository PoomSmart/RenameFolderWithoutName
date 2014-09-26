GO_EASY_ON_ME = 1
ARCHS = armv7 armv7s arm64
SDKVERSION = 7.0

include theos/makefiles/common.mk

TWEAK_NAME = RFWN
RFWN_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
