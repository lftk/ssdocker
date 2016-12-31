FROM php:fpm
MAINTAINER zhoujun <dev.zhoujun@gmail.com>

RUN apt-get update \
    && apt-get install -y git

RUN apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    zlib1g-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-configure zip \
    && docker-php-ext-install -j$(nproc) gd iconv mcrypt mysqli pdo_mysql zip 

RUN pecl install redis \
    && docker-php-ext-enable redis
