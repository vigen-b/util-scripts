#!/bin/bash

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

array=("yes" "y" "true" "1")

value_to_test="yes 1"

value=`echo "$value_to_test" | tr '[:upper:]' '[:lower:]'`

if containsElement "$value" "${array[@]}"; then
    echo "contains"
else
    echo "not cont"
fi
