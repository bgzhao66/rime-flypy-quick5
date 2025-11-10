#!/bin/bash
#
# Strip lines containing non-Chinese characters from a text file.
#
perl -pi -e '$_ = "" if /^\S*[0-9a-zA-Z]/' $1
perl -pi -e '$_ = "" if /哈哈哈/' $1
perl -pi -e 's/·//g' $1
perl -pi -e '$_ = "" if /^\t/' $1
perl -Mutf8 -CSD -i -ne 'print unless /^的/ && !/^(?:的里雅斯特|的的喀喀湖|的黎波里|的的確確|的一確二|的士司機|的確如此|的士費|的士高|的確會|的確涼|的確是|的確良|的盧|的哥|的姐|的士|的確|的)(?:\s|\t|:|$)/' $1
