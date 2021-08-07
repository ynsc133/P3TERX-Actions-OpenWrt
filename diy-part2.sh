#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
mv ./openwrt/feeds/luci/collections/luci/Makefile ./openwrt/feeds/luci/collections/luci/Makefile.bak
cp ./Makefile ./openwrt/feeds/luci/collections/luci
mv ./openwrt/package/base-files/files/etc/shadow ./openwrt/package/base-files/files/etc/shadow.bk
cp ./shadow ./openwrt/package/base-files/files/etc
mv ./openwrt/package/feeds/luci/luci-base/root/www/index.html ./openwrt/package/feeds/luci/luci-base/root/www/index.html.bk
cp ./index.html ./openwrt/package/feeds/luci/luci-base/root/www
mv ./openwrt/package/base-files/files/bin/config_generate ./openwrt/package/base-files/files/bin/config_generate.bk
cp ./config_generate ./openwrt/package/base-files/files/bin
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate
