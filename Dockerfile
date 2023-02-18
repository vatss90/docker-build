FROM centos
RUN yum install httpd -y
RUN cd /var/www/html
RUN touch /var/www/html/index.html
CMD echo "sunil vats " >> /var/www/html/index.html
RUN systemctl start httpd

