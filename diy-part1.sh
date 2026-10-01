#!/bin/bash
#
# OpenWrt DIY script part 1
# Before Update feeds
#

set -e

echo "Add PassWall2 feeds"

# PassWall2 主程序
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >> feeds.conf.default

# PassWall2 依赖包
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' >> feeds.conf.default
