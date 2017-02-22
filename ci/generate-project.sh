#!/bin/sh

# apk --no-cache add wget jq unzip
#
# url="https://start.spring.io/starter.tgz?"
# url="${url}bootVersion=${BOOT_VERSION}&name=docker-image"
# url="${url}&artifactId=com.ecsteam&type=maven-project&packaging=jar"
#
# dependencies=`wget --no-check-certificate -O - "https://start.spring.io/dependencies?bootVersion=${BOOT_VERSION}" | jq -r '.dependencies | keys[]' | xargs | tr ' ' ','`
# url="${url}&dependencies=${dependencies}"
#
# wget --no-check-certificate -O - "${url}" | tar zxvf -

ls -alR
