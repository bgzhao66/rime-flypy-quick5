export PYTHONHASHSEED=0

PRIMARY_NAME = flypy_quick5_simp

.SILENT:
all:
	python3 ./convert_to_flypy_quick5.py --name $(PRIMARY_NAME) --chinese_code  --phrase --abbreviate \
				--extra_table --difference      \
				extra/essay.txt
#				extra/360wdict.txt    \
#				extra/words.txt

	echo "All tables converted"

.PHONY: clean
clean:
	rm -f ../$(PRIMARY_NAME)*.dict.yaml
