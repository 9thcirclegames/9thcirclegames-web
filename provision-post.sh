#!/usr/bin/env bash

set -ex

/usr/local/bin/wp --path=/var/www/html site create --slug=eden --title="Eden: Deception"
/usr/local/bin/wp --path=/var/www/html site create --slug=woc --title="Wisdom of Cthulhu"
#/usr/local/bin/wp --path=/var/www/html --url="http://9thcircle.dev/eden" theme activate eden-frontend