# Use Ubuntu 18.04 as base image
FROM ubuntu:18.04

COPY install.py ./install.py
# Update the system
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install libxslt1-dev libcurl4 libgeoip-dev python wget -y;

RUN mkdir /home/xtreamcodes
RUN mkdir /home/xtreamcodes/iptv_xtream_codes
RUN mkdir /home/xtreamcodes/iptv_xtream_codes/config
# Make the script executable
RUN chmod 755 install.py

# Install Xtream UI (You may need to customize this command according to your needs)
RUN python install.py