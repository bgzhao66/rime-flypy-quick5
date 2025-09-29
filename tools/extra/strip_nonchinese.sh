#!/bin/bash
#
# Strip lines containing non-Chinese characters from a text file.
#
perl -pi -e '$_ = "" if /[0-9a-zA-Z]/' $1
