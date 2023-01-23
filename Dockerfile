FROM php:8.1-apache

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
    ssl-cert \
    rsync \
    zlib1g-dev \
    libzip-dev \
    zip \
    p7zip-full \
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
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/* /var/log/lastlog /var/log/faillog && \
    rm -f /var/log/{apt/*,alternatives.log,dpkg.log} && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    a2enmod rewrite && \
    a2enmod headers && \
    a2enmod expires && \
    a2enmod rewrite ssl && \
    a2ensite default-ssl && \
    cd /etc/apache2/sites-enabled/ && \
    sed -i '/<\/VirtualHost>/d'                          000-default.conf && \
    echo 'RewriteEngine On'                           >> 000-default.conf && \
    echo 'RewriteRule . https://%{SERVER_NAME} [R,L]' >> 000-default.conf && \
    echo '</VirtualHost>'                             >> 000-default.conf && \
    wget -O /usr/bin/drush https://github.com/drush-ops/drush-launcher/releases/latest/download/drush.phar && chmod +x /usr/bin/drush

EXPOSE 80
EXPOSE 443
