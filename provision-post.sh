#!/usr/bin/env bash

set -ex

/usr/local/bin/wp --path=/var/www/wordpress site create --slug=eden --title="Eden: Deception"
/usr/local/bin/wp --path=/var/www/wordpress --url="http://9thcircle.dev/eden" theme activate eden-frontend