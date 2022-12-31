FROM centos:latest
MAINTAINER raghunath7548@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogemic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogemic.zip
RUN cp -rvf photogemic/* 
RUN rm -rf photogemic photogemic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
