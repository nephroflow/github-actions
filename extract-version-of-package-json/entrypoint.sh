#!/bin/sh -l

output=v$(jq -r .version package.json)-dev
echo "Output: $output"

echo "::set-output name=version::$output"