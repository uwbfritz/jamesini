#!/usr/bin/env bash

echo "Loading private files..."
docker run --rm -v /Users/jamesini/drupal_files/private:/d9privatefiles -v jamesini_private:/home/d9privatefiles busybox cp -r /d9privatefiles /home

echo ""
echo "Loading public files..."
docker run --rm -v /Users/jamesini/drupal_files/public:/files -v jamesini_public:/var/www/html/web/sites/default/files busybox cp -r /files /var/www/html/web/sites/default


# Leave for QA

#docker run --rm -v /etc:/d9privatefiles -v jamesini_private:/home/d9privatefiles busybox cp -r /d9privatefiles /home

#docker run --rm -v /etc:/files -v jamesini_public:/var/www/html/web/sites/default/files busybox cp -r /files /var/www/html/web/sites/default