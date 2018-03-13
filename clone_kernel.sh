#!/bin/bash

# $1 --old prj (x300)
# $2 --new prj (x600)
# Usage: clone_kernel.sh $1 $2

echo "step1 copy erobbing conf"
cp -a erobbing/$1  erobbing/$2

echo "step2 copy build script ./"
cp -a build_$1.sh build_$2.sh
cp -a build_$1_perf.sh build_$2_perf.sh
sed -i 's/'$1'/'$2'/g' build_$2.sh
sed -i 's/'$1'/'$2'/g' build_$2_perf.sh

echo "-----------------kernel: clone $1-->$2 success-------------------"