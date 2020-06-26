#!/bin/bash

ls -hal .
pwd
wkhtmltopdf ./$1 testrun.pdf