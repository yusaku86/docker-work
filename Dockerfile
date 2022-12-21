FROM amazonlinux
EXPOSE 80
RUN yum update \
&& timedatectl set-timezone Asia/Tokyo \
&& yum install -y httpd \
&& amazon-linux-extras install -y epel \
&& yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
&& yum install -y php81 \
&& echo "date.timezone = Asia/Tokyo" >> /etc/php.ini \
&& rm -rf /var/cache/yum/* \
&& yum clean all
CMD /usr/sbin/httpd -DFOREGROUND
