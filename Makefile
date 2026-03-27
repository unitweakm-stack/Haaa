cat > Makefile << 'EOF'
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = VantroxESign
VantroxESign_FILES = Tweak.xm
VantroxESign_CFLAGS = -fobjc-arc
VantroxESign_FRAMEWORKS = UIKit

ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0

VantroxESign_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries

include $(THEOS)/makefiles/library.mk
EOF
