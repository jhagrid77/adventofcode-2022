#!/bin/bash

elf=1

while read -r; do
  case "${REPLY}" in 
    "")
      output+=("Elf ${elf} is carrying ${calories} calories")
      calories=0
      elf=$((++elf))
      ;; 
    *)
      calories=$((calories + REPLY))
      ;;
    esac
done < <(cat input.txt) && output+=("Elf ${elf} is carrying ${calories} calories")

printf '%s\n' "${output[@]}" | sort -rhk5
