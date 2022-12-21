FROM amazonlinux
EXPOSE 80
RUN yum update \
&& yum install -y httpd \
&& amazon-linux-extras install -y epel \
&& sudo yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm php81 \
&& yum clean all \
&& rm -rf /var/lib/apt/lists/* \
CMD /usr/sbin/httpd -DFOREGROUND
