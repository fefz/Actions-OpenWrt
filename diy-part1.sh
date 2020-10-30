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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# add naiveproxy suupprt for ssrplus
# sed -i '$a src-git helloworld https://github.com/1715173329/helloworld.git;naiveproxy' feeds.conf.default

# add openclash
git clone https://github.com/vernesong/OpenClash && mv OpenClash/luci-app-openclash ./package

# add lienol package
sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-package.git;master' feeds.conf.default

# add smartdns
sed -i '$a src-git lucismartdns https://github.com/pymumu/luci-app-smartdns' feeds.conf.default
sed -i '$a src-git smartdns https://github.com/pymumu/openwrt-smartdns' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
