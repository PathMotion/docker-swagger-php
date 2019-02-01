# Composer step 
# fetches the latest version of swagger-php
FROM composer:latest as composer

ENV COMPOSER_HOME=/composer
RUN composer global require -a --prefer-stable --ignore-platform-reqs zircote/swagger-php
RUN ls /composer/vendor/bin

# Php step
# Copies swagger-php only and provides it a php 7 runtime
FROM php:7-alpine

COPY --from=composer /composer/vendor /bin/composer/vendor

WORKDIR /app

ENTRYPOINT ["php", "/bin/composer/vendor/bin/openapi"]]