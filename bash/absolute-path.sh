#!/bin/bash

echo "DIRNAME = $(dirname $0)"
dir=$(dirname $0)
echo "PWD = $(pwd)"
pwd=$(pwd)
absolute_path=$(realpath "$pwd/$dir")
echo "RESOLVED PATH = $absolute_path"
