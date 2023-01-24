#!/usr/bin/env bash

docker exec -it "$(docker ps -aqf "name=drupal9_jamesini_frontend")" /bin/bash -c "ln -s /home/d9publicfiles /var/www/html/web/sites/default/files"


