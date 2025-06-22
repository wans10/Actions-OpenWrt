#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# 修改主机名字
sed -i 's/OpenWrt/RaspberryPi-4B/g' package/base-files/files/bin/config_generate

# 修改默认wifi名称ssid为OpenWrt-5G
sed -i 's/ssid=OpenWrt/ssid=OpenWrt-5G/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认wifi密码key为Yang!984
sed -i 's/key=$/key=Yang!984/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认wifi加密为psk2
sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 设置密码为Yang!984
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
