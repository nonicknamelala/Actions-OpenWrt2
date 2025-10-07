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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

cp $GITHUB_WORKSPACE/mi4a/mt7621.mk target/linux/ramips/image/

cp $GITHUB_WORKSPACE/mi4a/mt7621_xiaomi_mi-router-4a-common.dtsi target/linux/ramips/dts/

cp $GITHUB_WORKSPACE/mi4a/mt7621_xiaomi_mi-router-4a-common-o.dtsi target/linux/ramips/dts/

cp $GITHUB_WORKSPACE/mi4a/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts target/linux/ramips/dts/
