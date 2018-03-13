#!/bin/bash

# $1 --old prj (X300)
# $2 --new prj (X600)
# Usage: clone_kernel.sh $1 $2

echo "copy devices base pro"
cp -far device/qcom/$1  device/qcom/$2
mv device/qcom/$2/$1.mk device/qcom/$2/$2.mk

sed -i 's/'$1'/'$2'/g' device/qcom/$2/AndroidBoard.mk
sed -i 's/'$1'/'$2'/g' device/qcom/$2/vendorsetup.sh
sed -i 's/'$1'/'$2'/g' device/qcom/$2/$2.mk

sed -i 's/\(.*PRODUCT_NAME :=\).*/\1/' device/qcom/$2/$2.mk
sed -i 's/\(.*PRODUCT_DEVICE :=\).*/\1/' device/qcom/$2/$2.mk
sed -i 's/\(.*PRODUCT_MODEL :=\).*/\1/' device/qcom/$2/$2.mk
sed -i 's/\(.*PRODUCT_BRAND :=\).*/\1/' device/qcom/$2/$2.mk 
sed -i 's/\(.*PRODUCT_MANUFACTURER :=\).*/\1/' device/qcom/$2/$2.mk
#BOARD_EGL_CFG
#zero.bin

sed -i 's/PRODUCT_NAME :=/PRODUCT_NAME := '$2'/g' device/qcom/$2/$2.mk
sed -i 's/PRODUCT_DEVICE :=/PRODUCT_DEVICE := '$2'/g' device/qcom/$2/$2.mk
sed -i 's/PRODUCT_MODEL :=/PRODUCT_MODEL := '$2'/g' device/qcom/$2/$2.mk
sed -i 's/PRODUCT_BRAND :=/PRODUCT_BRAND := '$2'/g' device/qcom/$2/$2.mk
sed -i 's/PRODUCT_MANUFACTURER :=/PRODUCT_MANUFACTURER := '$2'/g' device/qcom/$2/$2.mk

sed -i 's/'$1'/'$2'/g' device/qcom/$2/AndroidProducts.mk
echo "-----------------Android: clone $1-->$2 success-------------------"
