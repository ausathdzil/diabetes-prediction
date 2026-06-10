#!/usr/bin/env python3
import sys

def main():
    current_key = None
    
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
            
        if current_key != line:
            current_key = line
            print(current_key)

if __name__ == "__main__":
    main()
