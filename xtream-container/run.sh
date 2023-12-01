#!/bin/bash

python install.py
service mysql start
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
sleep infinity