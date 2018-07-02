FROM php:7.2.1-apache
RUN apt-get update && apt-get install -y libxml2-dev libmcrypt-dev
RUN docker-php-ext-install soap
RUN docker-php-ext-install pdo pdo_mysql 
RUN docker-php-ext-install mcrypt

COPY . /var/www/
