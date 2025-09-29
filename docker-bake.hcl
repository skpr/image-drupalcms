variable "STREAM" {
  default = "latest"
}

variable "PLATFORMS" {
  default = ["linux/amd64", "linux/arm64"]
}

variable "REGISTRIES" {
  default = ["docker.io", "ghcr.io"]
}

# Common target: Everything inherits from this
target "_common" {
  platforms = PLATFORMS
}

group "default" {
  targets = [
    "nginx",
    "php-fpm",
  ]
}

target "nginx" {
  inherits = ["_common"]
  context  = "nginx"

  tags = [
    "ghcr.io/skpr/image-drupalcms:nginx-${STREAM}"
  ]
}

target "php-fpm" {
  inherits = ["_common"]
  context  = "php-fpm"

  tags = [
    "ghcr.io/skpr/image-drupalcms:php-fpm-${STREAM}"
  ]
}
