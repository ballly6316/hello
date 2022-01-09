FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
zip \
unzip
RUN systemctl start httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
