FROM php:8.2.10-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    redis-tools

RUN docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd xml zip iconv

# PHP REDIS EXTENSION FOR PHP
RUN printf "\n" | pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis

# Install supervisor
RUN apt-get update \
  && apt-get install -y --no-install-recommends supervisor \
    && apt-get install -y redis-tools

RUN mkdir -p "/etc/supervisor/logs"

COPY /sfvel-api/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisor/supervisord.conf"]
