#!/usr/bin/env python3
import sys

def main():
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
            
        if line.startswith("Diabetes_012") or line.startswith("Diabetes_binary"):
            # Skip the header so we don't output it to Hadoop.
            # If we let Hadoop process the header, its alphanumeric sort 
            # will push the header row to the bottom of the dataset 
            # (since numbers 0 and 1 sort before the letter 'D').
            # We'll manually inject the header in the shell script instead.
            continue
            
        columns = line.split(",")
        
        if len(columns) != 22:
            continue
            
        if columns[0] == "2.0":
            columns[0] = "1.0"
            
        print(",".join(columns))

if __name__ == "__main__":
    main()
