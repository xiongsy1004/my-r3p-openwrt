#!/bin/bash
#
# OpenWrt DIY script part 2
# Custom default settings
#

set -e

echo "Apply R3P settings"


#
# 默认IP改为10.0.0.1
#

sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate


#
# 修改默认主机名
#

sed -i 's/OpenWrt/R3P-OpenWrt/g' package/base-files/files/bin/config_generate


#
# 默认时区
#

sed -i "s/UTC/CST-8/g" package/base-files/files/bin/config_generate
