#!/bin/bash
#
# Strip lines containing non-Chinese characters from a text file.
#
perl -pi -e '$_ = "" if /^\S*[0-9a-zA-Z]/' $1
perl -pi -e '$_ = "" if /哈哈哈/' $1
perl -pi -e 's/·//g' $1
perl -pi -e '$_ = "" if /^\t/' $1
perl -Mutf8 -CSD -i -ne 'print unless /^的/ && !/^(?:的里雅斯特|的的喀喀湖|的黎波里|的的确确|的一确二|的士司机|的确如此|的士费|的士高|的确会|的确凉|的确是|的确良|的卢|的哥|的姐|的士|的确|的)(?:\s|\t|:|$)/' $1
