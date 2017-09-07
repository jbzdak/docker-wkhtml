#!/usr/bin/env bash

set -e

# If image will stop using jessie this will fail and you'll be able to fix it manually.
cat /etc/apt/sources.list | grep jessie

# Install wkhtml to pdf. We won't be using it, but having it installed globally
# pulls all the dependencies.

apt-get update
apt-get install wget wkhtmltopdf xz-utils -qy
rm -rf /var/lib/apt/lists/*
