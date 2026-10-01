#!/bin/bash
#
# OpenWrt DIY script part 1
# Add custom feeds
#

set -e

echo "Adding PassWall2 feeds"

# PassWall2 dependencies
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' >> feeds.conf.default
