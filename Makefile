FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Fluidify
Fluidify_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
