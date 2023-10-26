#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' openwrt/package/base-files/files/bin/config_generate

#set timezone
sed -i 's/timezone='UTC'/timezone='CST-8'/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/set system.ntp.enable_server='0'/set system.ntp.enable_server='1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/0.openwrt.pool.ntp.org/ntp.aliyun.com/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/time1.cloud.tencent.com/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/time.ustc.edu.cn/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/cn.pool.ntp.org/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
