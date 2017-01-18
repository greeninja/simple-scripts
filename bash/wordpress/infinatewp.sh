#!/bin/bash

# Installs wp-cli as a php script, installs all tests from http://wptest.io and cleans up after itself.
# Assumes web dir is /var/www/html

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# Install import plugin
php wp-cli.phar plugin install iwp-client --activate
key=$(php wp-cli.phar option get siteurl)
url=$(php wp-cli.phar option get siteurl)

echo "Admin Url: $url/wp-admin"
echo "Key:       $key"
