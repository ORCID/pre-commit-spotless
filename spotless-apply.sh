#!/usr/bin/env bash

file_list=''
user=`whoami`

# hack .* -DspotlessFiles to work and build up comma separated list of all the files that have changed
for file in $@;do
  file_list="$file_list,.*$file"
done

# https://github.com/ejba/pre-commit-maven/blob/main/pre_commit_maven/utils/maven.py
export MAVEN_OPTS="-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none "

echo "mvn --batch-mode -f spotless.xml -Dstyle.color=always -DspotlessFiles=$file_list spotless:apply" >> /tmp/spotless-apply-$user.log
mvn --batch-mode -f spotless.xml -Dstyle.color=always -DspotlessFiles=$file_list spotless:apply

