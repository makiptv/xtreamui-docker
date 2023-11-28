# Use Ubuntu 18.04 as base image
FROM ubuntu:18.04

COPY install.py /tmp/install.py
# Update the system
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install libxslt1-dev libcurl4 libgeoip-dev python wget -y;
# Download Xtream UI installation script
WORKDIR /tmp

# Make the script executable
RUN chmod 755 install.py

# Install Xtream UI (You may need to customize this command according to your needs)
RUN python install.py