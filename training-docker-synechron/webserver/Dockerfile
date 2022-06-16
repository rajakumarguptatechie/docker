FROM centos:7
RUN yum install httpd -y
COPY index.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT ["/usr/sbin/httpd"] 
CMD ["-D", "FOREGROUND"] 
