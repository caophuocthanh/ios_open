TARGET := iphone:clang:latest:7.0
THEOS_DEVICE_IP = 192.168.1.7

include $(THEOS)/makefiles/common.mk

TOOL_NAME = open

open_FILES = main.m
open_CFLAGS = -fobjc-arc
open_CODESIGN_FLAGS = -Sentitlements.plist
open_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
