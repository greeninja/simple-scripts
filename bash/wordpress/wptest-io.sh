#!/bin/bash

# Installs wp-cli as a php script, installs all tests from http://wptest.io and cleans up after itself.
# Assumes web dir is /var/www/html

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
curl -OL https://raw.githubusercontent.com/manovotny/wptest/master/wptest.xml
# Install import plugin
php wp-cli.phar plugin install wordpress-importer --activate
php wp-cli.phar plugin install jetpack --activate
# Now install all the stuff from http://wptest.io
php wp-cli.phar import wptest.xml --authors=create

# Now clean up
rm wptest.xml
rm wp-cli.phar
