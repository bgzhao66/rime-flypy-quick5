#!/bin/bash
#
# Strip lines containing non-Chinese characters from a text file.
#
perl -pi -e '$_ = "" if /^\S*[0-9a-zA-Z]/' $1
perl -pi -e '$_ = "" if /哈哈哈/' $1
perl -pi -e 's/·//g' $1
perl -pi -e '$_ = "" if /^\t/' $1
