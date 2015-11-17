#!/bin/sh
find  -name "*.java" > name1.txt;find  -name "*.java" > name2.txt;awk '{a="NULL";getline a < "name1.txt";print $0,">"}' name1.txt > name11.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name11.txt > name.txt;awk '{a="NULL";getline a < "name.txt";print "cat "$0}' name.txt > name3.txt;awk '{a="NULL";getline a < "name3.txt";print $0".txt"}' name3.txt > name4.sh
cat namex.sh name4.sh  > name5.sh
chmod u+x name5.sh
./name5.sh
find . -name "*.java" -exec rm {} \;
awk '{a="NULL";getline a < "name1.txt";print "mv "$0}' name1.txt > name22.txt;awk '{a="NULL";getline a < "name22.txt";print $0".txt"}' name22.txt > name33.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name33.txt > name44.sh
cat namex.sh name44.sh  > name6.sh
chmod u+x name6.sh
./name6.sh


#!/bin/awk
find  -name "*.c" > name1.txt;find  -name "*.c" > name2.txt;awk '{a="NULL";getline a < "name1.txt";print $0,">"}' name1.txt > name11.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name11.txt > name.txt;awk '{a="NULL";getline a < "name.txt";print "cat "$0}' name.txt > name3.txt;awk '{a="NULL";getline a < "name3.txt";print $0".txt"}' name3.txt > name4.sh
cat namex.sh name4.sh  > name5.sh
chmod u+x name5.sh
./name5.sh
find . -name "*.c" -exec rm {} \;
awk '{a="NULL";getline a < "name1.txt";print "mv "$0}' name1.txt > name22.txt;awk '{a="NULL";getline a < "name22.txt";print $0".txt"}' name22.txt > name33.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name33.txt > name44.sh
cat namex.sh name44.sh  > name6.sh
chmod u+x name6.sh
./name6.sh


#!/bin/awk
find  -name "*.cpp" > name1.txt;find  -name "*.cpp" > name2.txt;awk '{a="NULL";getline a < "name1.txt";print $0,">"}' name1.txt > name11.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name11.txt > name.txt;awk '{a="NULL";getline a < "name.txt";print "cat "$0}' name.txt > name3.txt;awk '{a="NULL";getline a < "name3.txt";print $0".txt"}' name3.txt > name4.sh
cat namex.sh name4.sh  > name5.sh
chmod u+x name5.sh
./name5.sh
find . -name "*.cpp" -exec rm {} \;
awk '{a="NULL";getline a < "name1.txt";print "mv "$0}' name1.txt > name22.txt;awk '{a="NULL";getline a < "name22.txt";print $0".txt"}' name22.txt > name33.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name33.txt > name44.sh
cat namex.sh name44.sh  > name6.sh
chmod u+x name6.sh
./name6.sh

#!/bin/awk
find  -name "*.cc" > name1.txt;find  -name "*.cc" > name2.txt;awk '{a="NULL";getline a < "name1.txt";print $0,">"}' name1.txt > name11.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name11.txt > name.txt;awk '{a="NULL";getline a < "name.txt";print "cat "$0}' name.txt > name3.txt;awk '{a="NULL";getline a < "name3.txt";print $0".txt"}' name3.txt > name4.sh
cat namex.sh name4.sh  > name5.sh
chmod u+x name5.sh
./name5.sh
find . -name "*.cc" -exec rm {} \;
awk '{a="NULL";getline a < "name1.txt";print "mv "$0}' name1.txt > name22.txt;awk '{a="NULL";getline a < "name22.txt";print $0".txt"}' name22.txt > name33.txt;awk '{a="NULL";getline a < "name2.txt";print $0,a}' name33.txt > name44.sh
cat namex.sh name44.sh  > name6.sh
chmod u+x name6.sh
./name6.sh