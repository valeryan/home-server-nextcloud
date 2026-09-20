#!/usr/bin/env bash

set -Eeuo pipefail

# PHP-FPM and Nextcloud's writable files run as www-data in the official image.
# NEXTCLOUD_CONTAINER can override the Compose container name when needed.
readonly container="${NEXTCLOUD_CONTAINER:-nextcloud-app}"

exec docker exec \
	--user www-data \
	"${container}" \
	php /var/www/html/occ "$@"
