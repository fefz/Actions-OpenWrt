#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# add naiveproxy suupprt for ssrplus
sed -i '$a src-git helloworld https://github.com/1715173329/helloworld.git;naiveproxy' feeds.conf.default

# add openclash
git clone https://github.com/vernesong/OpenClash && mv OpenClash/luci-app-openclash ./package

# add lienol package
sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-package.git;master' feeds.conf.default
sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;dev-17.01' feeds.conf.default
sed -i '$a src-git packages https://github.com/Lienol/openwrt-packages.git;dev-19.07' feeds.conf.default
sed -i '$a src-git routing https://git.openwrt.org/feed/routing.git;openwrt-19.07' feeds.conf.default
sed -i '$a src-git telephony https://git.openwrt.org/feed/telephony.git;openwrt-19.07' feeds.conf.default


# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
