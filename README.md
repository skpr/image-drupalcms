# Drupal Images

Baked Drupal images for infastructure development workflows.

## Usage

```yaml
services:

  nginx:
    image: ghcr.io/skpr/image-drupal:nginx-main
    ports:
      - "8080:8080"

  php-fpm:
    image: ghcr.io/skpr/image-drupal:php-fpm-main
```

## Streams

This image suite provides 2 streams for images:

* `stable` - Our production/stable upstream for projects. Use this by default.
* `latest` - Recently merged changes which will be merged into `stable` as part of a release.

## Images

Images are available in the following registries:

* `ghcr.io`

## Image List

Below is the list of images we provide.

By default we recommend the following stream:

```
STREAM=stable
```

**Stable**

```
ghcr.io/skpr/image-drupal:nginx-STREAM
ghcr.io/skpr/image-drupal:php-fpm-STREAM
```

## Building Images

Build the images locally using the following command:

```bash
$ make
```
