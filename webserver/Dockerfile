FROM ubuntu:16.04
MAINTAINER Raja Kumar Gupta <rajakumargupta.techie@gmail.com>
RUN apt-get update && apt-get install apache2 ufw curl -y && /usr/sbin/ufw allow 'Apache Full'
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

