FROM php:8.4-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
        libzip-dev libicu-dev libonig-dev unzip git \
    && docker-php-ext-install zip mbstring intl pdo_mysql \
    && rm -rf /var/lib/apt/lists/*

# Les variables d'environnement du conteneur doivent être visibles par PHP-FPM
RUN printf "[www]\nclear_env = no\n" > /usr/local/etc/php-fpm.d/zz-env.conf

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
