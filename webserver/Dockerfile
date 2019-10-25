FROM ubuntu:latest
MAINTAINER Raja Kumar Gupta <rajakumargupta.techie@gmail.com>
RUN apt-get update && apt-get install apache2 ufw curl -y 
RUN /usr/sbin/ufw allow 'Apache Full'
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

