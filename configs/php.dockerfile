FROM php:7.2-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        git \
        zip \
        libpng-dev

RUN docker-php-ext-install pdo_mysql && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install gd

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY php.ini /etc/php/7.1/fpm/conf.d/40-custom.ini
