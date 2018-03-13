#!/bin/sh
tar zcvf strings.tar.gz packages/*/*/res/values/*strings*.xml \
packages/*/*/*/res/values/*strings*.xml \
frameworks/*/*/*/*/*/*/res/values/*strings*.xml \
frameworks/*/*/*/*/*/res/values/*strings*.xml \
frameworks/*/*/*/*/res/values/*strings*.xml \
frameworks/*/*/*/res/values/*strings*.xml \
frameworks/*/*/res/values/*strings*.xml \
vendor/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/*/*/*/*/res/values/*strings*.xml \
vendor/*/*/*/*/*/*/*/*/*/*/*/res/values/*strings*.xml

