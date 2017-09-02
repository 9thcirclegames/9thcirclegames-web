#!/usr/bin/env bash

set -x

###################
# Setup Websites
##
/usr/local/bin/wp --path=/var/www/html site create --slug=eden --title="Eden: Deception"
/usr/local/bin/wp --path=/var/www/html site create --slug=woc --title="Wisdom of Cthulhu"

###################
# Premium Themes
##

# Eden: Deception
/usr/local/bin/wp --path=/var/www/html theme install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/divi.zip
git clone https://github.com/9thcirclegames/eden-wp.git /var/www/html/wp-content/themes/eden
sed -i 's/git@github.com:/https:\/\/github.com\//' /var/www/html/wp-content/themes/eden/.gitmodules
cd /var/www/html/wp-content/themes/eden
git submodule update --init --recursive

/usr/local/bin/wp --path=/var/www/html --url="http://9thcircle.dev/eden" theme activate eden

###################
# Plugins Setup
##
/usr/local/bin/wp --path=/var/www/html plugin uninstall hello
/usr/local/bin/wp --path=/var/www/html plugin install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/bloom.zip
/usr/local/bin/wp --path=/var/www/html plugin install https://extras.gabrielebaldassarre.com/${NINTHCIRCLEGAMES_PREMIUM_KEY}/monarch.zip

/usr/local/bin/wp --path=/var/www/html plugin activate bloom --network
/usr/local/bin/wp --path=/var/www/html plugin activate monarch --network
