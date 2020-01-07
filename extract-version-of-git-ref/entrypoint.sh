#!/bin/sh -l

echo "Input: $1"
output=$(echo "$1" | sed "s#refs/tags/##g")
echo "Output: $output"

echo "::set-output name=version::$output"