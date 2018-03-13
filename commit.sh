#!/bin/bash
# eg: ./commit.sh 22bb6ddbb2a7d21a2261f8c611016747ac3dea5a "master q606_Prison"
DATE=`date`
echo "current time:"$DATE
if [ $# = 1 ];then
  echo "commit id is:"$1
elif [ $# = 2 ]; then
  echo "commit id is:"$1
  echo "Branches:" $2
  LIST=$2
  echo "Branches to be committed:"$LIST
else
  echo "please input commit id!"
  exit -1
fi

#branch to be committed
if [ -z "$LIST" ];then
 LIST="postcs12_master_branch_20160927 lkb1616_20160810 l8_judiciary_tianjin l8_judiciary  q606_judiciary l435_l455_master_branch_20160909 r800_20161117 l503x_mp_20161024 t8_vt_04_12"
 echo "use default branch"$LIST
fi

for branch in $LIST
do
 echo "commit branch "$branch"..."
 git checkout $branch&&git pull&&git cherry-pick $1&&git push origin $branch

 if [ $? != 0 ];then
   echo "commit branch:"$branch" failed"
   echo $DATE", commit branch:"$branch" failed" >> commitlog.txt
   exit -1
 else
   echo $DATE", commit branch "$branch" ok"
   echo $DATE",commit branch:"$branch" ok" >> commitlog.txt
 fi
done
