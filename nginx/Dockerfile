ARG IMAGE_PHP=skpr/php-fpm:8.3-v2-latest
FROM ${IMAGE_PHP} as php-fpm

FROM docker.io/skpr/nginx-drupal:v2-latest
COPY --from=php-fpm --chown=skpr:skpr /data  /data