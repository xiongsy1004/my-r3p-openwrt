#!/bin/bash
#
# OpenWrt DIY script part 2
# After Update feeds
#

set -e

echo "Apply R3P custom settings"


#
# 修改默认LAN地址
# 原始 OpenWrt 默认 192.168.1.1
# 改成家庭网络常用 192.168.31.1
#

sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate


#
# 修改默认主机名
#

sed -i 's/OpenWrt/R3P-OpenWrt/g' package/base-files/files/bin/config_generate


#
# 设置默认时区 Asia/Shanghai
#

sed -i "s/option timezone 'UTC'/option timezone 'CST-8'/g" package/base-files/files/bin/config_generate
