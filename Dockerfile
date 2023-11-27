# Use Ubuntu 18.04 as base image
FROM ubuntu:20.04

# Update the system
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install libxslt1-dev libcurl4 libgeoip-dev python wget -y;

# Download Xtream UI installation script
WORKDIR /tmp
RUN wget https://github.com/xtream-ui-org/xtream-ui-install/raw/master/install.py;

# Make the script executable
RUN chmod 755 install.py

# Install Xtream UI (You may need to customize this command according to your needs)
RUN python install.py