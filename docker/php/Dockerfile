FROM php:7.4-fpm
WORKDIR /var/server
ADD ./docker/php/php.ini /usr/local/etc/php/conf.d/40-custom.ini
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) mysqli pdo_mysql zip