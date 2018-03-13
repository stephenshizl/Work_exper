#!/bin/bash

# $1 --old prj (X300)
# $2 --new prj (X600)
# Usage: clone_lk.sh $1 $2

echo "step1 copy project"
echo "copy project info in /project"
cp -a project/$1.mk  project/$2.mk
sed -i 's/'$1'/'$2'/g' project/$2.mk

echo "step2 copy target"
echo "copy target info in /targer"
cp -rf target/$1 target/$2

echo "step3 copy build script"
cp -a build_$1.sh build_$2.sh
sed -i 's/'$1'/'$2'/g' build_$2.sh

echo " "

echo "-----------------lk: clone $1-->$2 success-------------------"
