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
mv ./feeds/luci/collections/luci/Makefile ./feeds/luci/collections/luci/Makefile.bak
cp ./Makefile ./feeds/luci/collections/luci
mv ./package/base-files/files/etc/shadow ./package/base-files/files/etc/shadow.bk
cp ./shadow ./package/base-files/files/etc
mv ./package/feeds/luci/luci-base/root/www/index.html ./package/feeds/luci/luci-base/root/www/index.html.bk
cp ./index.html ./package/feeds/luci/luci-base/root/www
mv ./package/base-files/files/bin/config_generate ./package/base-files/files/bin/config_generate.bk
cp ./config_generate ./package/base-files/files/bin
mv ./package/kernel/mac80211/files/lib/wifi/mac80211.sh ./package/kernel/mac80211/files/lib/wifi/mac80211.sh.bk
cp ./mac80211.sh ./package/kernel/mac80211/files/lib/wifi
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate
