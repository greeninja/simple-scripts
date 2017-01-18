#!/bin/bash

# Installs wp-cli as a php script, installs all tests from http://wptest.io and cleans up after itself.
# Assumes web dir is /var/www/html

# cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# Install import plugin
php56-cli wp-cli.phar plugin install infinitewp-client --activate
