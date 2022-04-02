FROM centos
MAINTAINER Yudai Shimizu <yud1934ai@gmail.com>

# RUN:buildするときに実行される
# RUN echo "now building..."
RUN yum install -y httpd
ADD ./index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# CMD:runするときに実行される。
# CMD [echo "now runnning..."]
