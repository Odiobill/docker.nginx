# debian-based container for nginx
# VERSION               0.1
FROM debian:wheezy
MAINTAINER Davide Lucchesi  "davide@lucchesi.nl"

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
RUN echo "deb http://www.nginx.org/packages/debian/ wheezy nginx" > /etc/apt/sources.list.d/nginx.list
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y nginx
RUN apt-get clean

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /var/www

VOLUME /etc/nginx
VOLUME /var/www
VOLUME /var/log/nginx

EXPOSE 80

CMD ["/usr/sbin/nginx"]

