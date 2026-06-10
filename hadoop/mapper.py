#!/usr/bin/env python3
import sys

def main():
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
            
        if line.startswith("Diabetes_012") or line.startswith("Diabetes_binary"):
            columns = line.split(",")
            columns[0] = "Diabetes_binary"
            print(",".join(columns))
            continue
            
        columns = line.split(",")
        
        if len(columns) != 22:
            continue
            
        if columns[0] == "2.0":
            columns[0] = "1.0"
            
        print(",".join(columns))

if __name__ == "__main__":
    main()
