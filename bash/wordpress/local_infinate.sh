#!/bin/bash

# Installs wp-cli as a php script, installs all tests from http://wptest.io and cleans up after itself.
# Assumes web dir is /var/www/html

# cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# Install import plugin
php56-cli wp-cli.phar plugin install iwp-client --activate
key=$(php wp-cli.phar option get iwp_client_activate_key)
url=$(php wp-cli.phar option get siteurl)
user=$(php wp-cli.phar user get 1 | grep user_login | awk '{print $2}')

echo "Admin Url: $url/wp-admin"
echo "User:      $user"
echo "Key:       $key"
