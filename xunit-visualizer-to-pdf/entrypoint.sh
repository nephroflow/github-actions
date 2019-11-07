#!/bin/sh -l

xunit-viewer --results=$1 --output=testrun.html
chrome-headless-render-pdf --url=file:///testrun.html --pdf testrun.pdf --chrome-option=--no-sandbox --include-background
