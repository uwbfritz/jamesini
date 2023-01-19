FROM php:8.1-apache

# A lesson in Dockerfiles for Mr. Woods. Let's see how much I can fit on one line. Don't try this at home kids.

RUN apt update && \
    apt -y upgrade && \
    apt -y install git \
    wget \
    vim \
    nano \
    mariadb-client \
    libpng-dev \
    libmcrypt-dev \
    libicu-dev \
    libzip-dev \
    libmagickwand-dev \
    rsync \
    --no-install-recommends && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install gd && \
    docker-php-ext-install intl && \
    docker-php-ext-install zip && \
    docker-php-ext-install bcmath && \
    pecl install imagick && \
    docker-php-ext-enable imagick && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    rm -r /var/lib/apt/lists/* && \
    apt-get clean && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    a2enmod rewrite && \
    a2enmod headers && \
    a2enmod expires && \
    wget -O /usr/bin/drush https://github.com/drush-ops/drush-launcher/releases/latest/download/drush.phar && chmod +x /usr/bin/drush
