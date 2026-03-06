FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    nodejs \
    npm \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    default-mysql-client \
    && docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl bcmath gd

# ESGI-3IW-Docker-TP
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

COPY . /var/www/html

COPY php/init-laravel-3iw.sh /usr/local/bin/init-laravel-3iw.sh
RUN chmod +x /usr/local/bin/init-laravel-3iw.sh

CMD ["php-fpm"]