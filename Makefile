#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI page for a simple Web Shell
#LUCI_DEPENDS:=+luci-compat
PKG_NAME:=luci-app-webshell
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PKG_MAINTAINER:=siwind
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

