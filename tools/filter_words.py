import os
import re
import sys
import argparse

def filter_by_length(file):
    words = dict()
    with open(file) as f:
        for line in f:
            for word in re.findall(r'\b\w+\b', line):
                length = len(word)
                if length not in words:
                    words[length] = dict()
                words[length][word] = True

    for length in sorted(words.keys()):
        for word in sorted(words[length].keys()):
            print(word)

if __name__ == '__main__':
    # python filter_words.py <file>
    parser = argparse.ArgumentParser(description='Print words of a given length from a file')
    parser.add_argument('file', type=str, help='The file to read words from')
    args = parser.parse_args()
    
    if not os.path.isfile(args.file):
        print(f"Error: File '{args.file}' not found.")
        sys.exit(1)

    filter_by_length(args.file)
