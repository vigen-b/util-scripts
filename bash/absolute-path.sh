#!/bin/bash

dir=$(dirname $0)
echo "DIRNAME = ${dir}"

pwd=$(pwd)
echo "PWD = ${pwd}"

absolute_path=$(realpath "${pwd}/${dir}")
echo "RESOLVED PATH = ${absolute_path}"
