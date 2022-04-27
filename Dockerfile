FROM php:7.4-apache
COPY . /var/www/html
RUN apt-get update -y && apt-get install -y openssl zip unzip git apt-utils
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get --no-install-recommends install -y ca-certificates
RUN a2enmod rewrite
