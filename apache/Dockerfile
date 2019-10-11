FROM ubuntu:latest

MAINTAINER rajakumargupta.techie@gmail.com

# Update the system and install required packages
RUN apt update -y && apt install apache2 ufw -y

ENV DOCUMENT_ROOT      /var/www/sampledomain.com/html
ENV APACHE_LOG_DIR     /var/www/log
ENV SITE_AVAILABLE_DIR /etc/apache2/sites-available
ENV SCRIPT_DIR /scripts

COPY index.html $DOCUMENT_ROOT/
COPY sampledomain.com.conf $SITE_AVAILABLE_DIR/
COPY apacheSetup.sh $SCRIPT_DIR/

# Apache runs on port 80 and it is exposed to map with desired port on host
EXPOSE 80

# Script to setup Apache
RUN chmod 755 /scripts/apacheSetup.sh && /scripts/apacheSetup.sh

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
    
