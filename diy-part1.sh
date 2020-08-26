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
sed -i '$a src-git helloworld https://github.com/1715173329/helloworld/tree/naiveproxy' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
mkdir temp && cd temp && git clone https://github.com/rosywrt/luci-theme-rosy && cp -R luci-theme-rosy/luci-theme-rosy/ ../package/ && cd .. && rm -rf temp
mkdir temp && cd temp && git clone -b master https://github.com/vernesong/OpenClash && cp -R OpenClash/luci-app-openclash/ ../package/ && cd .. && rm -rf temp
# mkdir temp && cd temp && git clone -b master https://github.com/project-openwrt/openwrt-naiveproxy && cp -R openwrt-naiveproxy/* ../package/ && cd .. && rm -rf temp
