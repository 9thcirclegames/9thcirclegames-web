#!/usr/bin/env bash

set -x

# Setup Sites
/usr/local/bin/wp --path=/var/www/html site create --slug=eden --title="Eden: Deception"
/usr/local/bin/wp --path=/var/www/html site create --slug=woc --title="Wisdom of Cthulhu"

# Premium Themes
/usr/local/bin/wp --path=/var/www/html theme install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/divi.zip
#/usr/local/bin/wp --path=/var/www/html --url="http://9thcircle.dev/eden" theme activate eden-frontend

# Premium Plugins
/usr/local/bin/wp --path=/var/www/html plugin install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/bloom.zip
/usr/local/bin/wp --path=/var/www/html plugin install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/monarch.zip

/usr/local/bin/wp --path=/var/www/html plugin activate bloom --network
/usr/local/bin/wp --path=/var/www/html plugin activate monarch --network
