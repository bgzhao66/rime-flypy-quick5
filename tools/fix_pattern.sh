#!/bin/bash
# Usage: ./fix_pattern.sh <file_path>

# Example:
# perl -pe 's/(?<=PATTERN_BEFORE)SUBSTR(?=PATTERN_AFTER)/REPLACEMENT/g' file
#
perl -i -pe 's/即時(?=.+shi shi)/實時/g' $1
perl -i -pe 's/蔥姜/蔥薑/g' $1
perl -i -pe 's/團伙/團夥/g' $1
