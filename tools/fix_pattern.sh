#!/bin/bash
# Usage: ./fix_pattern.sh <file_path>

# Example:
# perl -pe 's/(?<=PATTERN_BEFORE)SUBSTR(?=PATTERN_AFTER)/REPLACEMENT/g' file
#
perl -i -pe 's/即時(?=.+shi shi)/實時/g' $1
perl -i -pe 's/蔥姜/蔥薑/g' $1
perl -i -pe 's/團伙/團夥/g' $1
perl -i -pe 's/包乾/包幹/g' $1
perl -i -pe 's/幹棗/乾棗/g' $1

perl -CSD -Mutf8 -i -pe 's/(?<=[一上下二亨仲佔來俯傅克入兩包匡和大小少尹崔左巫張徐敬斯景李杖杜東浴為王申稼範繼續聰苑英蕭衡西貞賀速道都阮阿陳雉雲韶])鹹/咸/g' $1
perl -CSD -Mutf8 -i -pe 's/鹹(?=[之京以伏共唐喜宜寧已弼恆應昧欽池熙用秩稱第籍茫藎豐躓陽離騖平])/咸/g' $1
