FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN apt-get update -y && apt-get install apache2 ufw curl -y 
RUN /usr/sbin/ufw allow 'Apache Full'
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
