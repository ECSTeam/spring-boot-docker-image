#!/bin/sh

set -eu

apk --no-cache add wget jq

mkdir -p `pwd`/boot-project/assets

BOOT_VERSION=`cat spring-boot/version`

url="https://start.spring.io/starter.zip?"
url="${url}bootVersion=${BOOT_VERSION}&name=docker-image"
url="${url}&artifactId=com.ecsteam&type=maven-project&packaging=jar"

dependencies=`wget --no-check-certificate -O - "https://start.spring.io/dependencies?bootVersion=${BOOT_VERSION}" | jq -r '.dependencies | keys[]' | xargs | tr ' ' ','`
url="${url}&dependencies=${dependencies}"

wget --no-check-certificate -O `pwd`/boot-project/assets/package.zip "${url}"
cp `pwd`/source/Dockerfile `pwd`/boot-project
