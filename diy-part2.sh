#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default THEME
sed -i 's/bootstrap/argon/1' feeds/luci/collections/luci-nginx/Makefile
sed -i 's/bootstrap/argon/1' feeds/luci/collections/luci-light/Makefile
sed -i 's/bootstrap/argon/1' feeds/luci/collections/luci-ssl-nginx/Makefile

# Modify default IP AND HOSTNAME
sed -i '314s/LEDE/OpenWrt/1' package/base-files/files/bin/config_generate
sed -i '165s/192.168.1.1/192.168.15.102/1' package/base-files/files/bin/config_generate
sed -i '169s/255.255.255.0/255.255.255.128/1' package/base-files/files/bin/config_generate

# Modify default FIREWALL
sed -i '137,144s/^/# /1' package/network/config/firewall/files/firewall.config

