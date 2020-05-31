FROM ubuntu:18.04
MAINTAINER JM <jaemunbro@gmail.com>

# avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 # install apache web server
# PHP 설치
# versionrepository를 지정해야하므로?
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # for installing php 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# Connect PHP & MySQL
RUN apt-get install -y php5.6-mysql

EXPOSE 80 

CMD ["apachectl", "-D", "FOREGROUND"]