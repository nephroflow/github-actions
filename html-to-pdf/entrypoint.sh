#!/bin/bash

ls -hal /github/workspace
wkhtmltopdf file:///github/workspace/$1 testrun.pdf
wkhtmltopdf ./$1 testrun.pdf