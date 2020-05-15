#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.111/g' package/base-files/files/bin/config_generate
sed -i 's/\#src-git helloworld/\src-git helloworld/g' ./feeds.conf.default
mkdir temp && cd temp && git clone https://github.com/rosywrt/luci-theme-rosy && cp -R luci-theme-rosy/luci-theme-rosy/ ../package/ && cd .. && rm -rf temp
mkdir temp && cd temp && git clone https://github.com/vernesong/OpenClash && cp -R OpenClash/luci-app-openclash/ ../package/ && cd .. && rm -rf temp


