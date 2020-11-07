#!/bin/bash

DIR=`dirname "$readlink -e "$0""`
cd $DIR

cp dark_headers.py /usr/bin/dark-headers
chmod +x /usr/bin/dark-headers

cp dark-headers.service /usr/lib/systemd/user/
