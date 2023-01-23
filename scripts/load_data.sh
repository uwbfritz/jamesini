#!/usr/bin/env bash


if [ -z "$1" ]
  then
    echo "No SQL file supplied"
    exit 1
else
  docker cp $1 "$(docker ps -aqf "name=drupal9_jamesini_frontend")":/tmp/$1
  docker exec -it "$(docker ps -aqf "name=drupal9_jamesini_frontend")" /usr/bin/mysql -uroot -pjamesini* -hdb drupal9_jamesini -e 'source /tmp/'$1''
fi

# James would be making a real change here.  This unreal change is for testing the forking workflow.

