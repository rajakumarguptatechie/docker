FROM centos:6
MAINTAINER Raja Kumar Gupta <rajakumargupta.techie@gmail.com>

RUN cd /tmp \
 && yum -y update \
 && yum -y install tar tcl gcc make wget which \
 && wget https://github.com/kr/beanstalkd/archive/v1.10.tar.gz \
 && tar -xzvf v1.10.tar.gz \
 && cd beanstalkd-1.10 \
 && make \
 && make install

 EXPOSE 11300

 ENTRYPOINT ["/usr/local/bin/beanstalkd"]
