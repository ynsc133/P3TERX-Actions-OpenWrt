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

cd ./OpenWrt/package/lean
rm -rf ./luci-theme-argon
cd ..
git clone https://github.com/esirplayground/luci-app-poweroff.git
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
git clone https://github.com/e2guardian/e2guardian.git
git clone https://github.com/houzhenggang/sqm-qos.git
git clone https://github.com/rosywrt/nft-qos.git
git clone https://github.com/lxc/lxc.git
git clone https://github.com/nwcdlabs/ipsecvpn.git
git clone https://github.com/ehang-io/nps.git
git clone https://github.com/destan19/OpenAppFilter.git
git clone https://github.com/meyerd/n2n.git
git clone https://github.com/Aslin-Ameng/luci-app-access-control.git
git clone https://github.com/cminyard/ser2net.git
git clone https://github.com/jerrykuku/luci-app-ttnode.git
git clone https://github.com/beilsn/luci-app-vssr-plus.git
git clone https://github.com/ynsc133/luci-app-ssr-plus.git
git clone https://github.com/ynsc133/luci-app-passwall.git
git clone https://github.com/kiddin9/openwrt-bypass.git
git clone https://github.com/SoftEtherVPN/SoftEtherVPN.git
git clone https://github.com/tty228/luci-app-serverchan.git
git clone https://github.com/small-5/luci-app-adblock-plus.git
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/tgraf/bmon.git
cd ..
cd ..
mv ./openwrt/feeds/luci/collections/luci/Makefile ./openwrt/feeds/luci/collections/luci/Makefile.bak
cp ./Makefile ./openwrt/feeds/luci/collections/luci
