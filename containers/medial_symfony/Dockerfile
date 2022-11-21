FROM php:apache
LABEL maintainer="kamil@medial.pl"

RUN sed -i -e "s#DocumentRoot /var/www/html#DocumentRoot /var/www/html/symfony/public#g" /etc/apache2/sites-enabled/000-default.conf

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    libxml2-dev \
    libpng-dev \
    libxslt-dev \
    zip \
    unzip \
    libzip-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    apt-transport-https \
    gnupg

RUN docker-php-ext-install \
    pdo_mysql \
    bcmath \
    gd \
    intl \
    opcache \
    simplexml \
    sockets \
    soap \
    xsl \
    zip

RUN mv /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini \
    && pear config-set php_ini /usr/local/etc/php/php.ini

RUN apt-get install autoconf g++ make \
    && pecl install xdebug \
    && pecl install ast

COPY ./xdebug.ini /usr/local/etc/php/conf.d/

RUN curl --silent --show-error https://getcomposer.org/installer | php \
    && mv /var/www/html/composer.phar /usr/local/bin/composer \
    && chmod +X /usr/local/bin/composer

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash \
    && apt install -y symfony-cli
