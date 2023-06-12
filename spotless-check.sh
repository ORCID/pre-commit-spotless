#!/usr/bin/env bash

file_list=''
user=`whoami`

for file in $@;do
  file_list="$file_list,.*$file"
done

echo "mvn -f spotless.xml -DspotlessFiles=$file_list spotless:check" >> /tmp/spotless-check-$user.log
mvn -f spotless.xml -DspotlessFiles=$file_list spotless:check

