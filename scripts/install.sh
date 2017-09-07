#!/usr/bin/env bash

# Calculated myself locally, still better than nothing.
DOWNLOAD_HASH=049b2cdec9a8254f0ef8ac273afaf54f7e25459a273e27189591edc7d7cf29db
FILE=wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
DOWNLOAD_URL=https://s3.eu-central-1.amazonaws.com/tools-austere-norwegian-hoary-rebecca/wkhtml/${FILE}

set -e

cd /tmp

wget ${DOWNLOAD_URL}

# Fails on invalid hash
sha256sum $FILE | grep ${DOWNLOAD_HASH}

mkdir -p  /wkhtmltopdf

tar --strip-components=1 -xaf $FILE -C /wkhtmltopdf

rm ${FILE}

echo 'PATH=/wkhtmltopdf/bin:$PATH' > /etc/profile.d/wkhtml.sh
