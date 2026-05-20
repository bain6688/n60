#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 1. 添加第三方满血插件源（这一步你写得完全正确）
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

# 2. 【核心优化】强行清除源码自带的同名旧包，防止编译时“双胞胎”冲突报错
rm -rf package/feeds/luci/luci-app-openclash
rm -rf package/feeds/packages/luci-app-openclash
rm -rf package/feeds/luci/luci-app-adguardhome
rm -rf package/feeds/packages/adguardhome

# 3. 如果需要，你还可以顺手把官方自带的、可能冲突的依赖也清理一下
rm -rf package/feeds/packages/openclash
