# Download and extract Drupal CMS.
FROM alpine:latest as drupal
RUN apk add unzip
ADD https://drupal.org/drupal-cms/1.0.0-rc1.zip /tmp
RUN unzip /tmp/1.0.0-rc1.zip
RUN mv drupal-cms /data

FROM skpr/php-fpm:8.3-v2-latest

COPY --from=drupal --chown=skpr:skpr /data /data
# Make this Drupal application compatible with our images.
RUN ln -sf /data/web /data/app

# Override settings.php
ADD --chown=skpr:skpr settings.php /data/app/sites/default/settings.php
ADD --chown=skpr:skpr services.yml /data/app/sites/default/services.yml

# Add Compose and Drush
COPY --from=docker.io/composer:2 --chown=skpr:skpr /usr/bin/composer /usr/local/bin/
RUN composer require drush/drush
COPY drush /etc/drush
