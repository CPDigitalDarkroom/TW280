TARGET = :clang:latest:7.0
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TW280
TW280_FILES = Tweak.xm
TW280_FRAMEWORKS = Foundation
TW280_CFLAGS = -fobjc-arc
TW280_USE_SUBSTRATE = 0

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_Store" -delete
