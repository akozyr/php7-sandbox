FROM php:7.2-fpm

RUN docker-php-ext-install pdo_mysql

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

COPY php.ini /etc/php/7.1/fpm/conf.d/40-custom.ini