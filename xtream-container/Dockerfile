# Use Ubuntu 18.04 as base image
FROM ubuntu:18.04

COPY install.py install.py
COPY run.sh run.sh
# Update the system
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install libxslt1-dev libcurl4 libgeoip-dev python wget sudo cron apt-utils -y;

#RUN mkdir /home/xtreamcodes
#RUN mkdir /home/xtreamcodes/iptv_xtream_codes
# Make the script executable
RUN chmod +x install.py
RUN chmod +x run.sh

# Install Xtream UI (You may need to customize this command according to your needs)

CMD ["bin/bash", "run.sh"]