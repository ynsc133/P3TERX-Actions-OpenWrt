#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

cd ./lede/lean
git clone https://github.com/esirplayground/luci-app-poweroff.git
git clone https://github.com/sirpdboy/luci-app-autopoweroff.git
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git
git clone https://github.com/tty228/luci-app-serverchan.git
git clone https://github.com/small-5/luci-app-adblock-plus.git
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
mv ./openwrt/feeds/luci/collections/luci/Makefile ./openwrt/feeds/luci/collections/luci/Makefile.bak
cp ./Makefile ./openwrt/feeds/luci/collections/luci
