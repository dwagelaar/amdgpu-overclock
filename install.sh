#!/bin/sh
set -ueo pipefail

basedir=$(dirname $0)
configs=$(basename -a `find ${basedir} -mindepth 1 -maxdepth 1 -type d -regex '\(.*\/\)?[^.]+'`)
options=$(echo ${configs} | tr ' ' '|')

config=${1:?Usage: $0 <${options}>}

cp ${basedir}/*.service /etc/systemd/system/
cp ${basedir}/${config}/* /usr/local/sbin/
/usr/bin/systemctl daemon-reload
