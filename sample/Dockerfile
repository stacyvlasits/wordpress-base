FROM composer:2 as phpbuild
WORKDIR /var/www/html
ADD composer.* /var/www/html/
RUN composer install --no-dev --ignore-platform-reqs --prefer-dist


FROM ghcr.io/utaustin-laits/wordpress-base:6-php7.4
COPY --from=phpbuild /var/www/html /var/www/html
RUN chown -R www-data:www-data /var/www/html
USER www-data
RUN cp wp-config-docker.php wp/wp-config.php