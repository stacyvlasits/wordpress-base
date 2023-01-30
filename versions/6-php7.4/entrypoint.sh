#!/usr/bin/env bash
set -Eeuo pipefail

if [[ -n "${MEMCACHED_SERVERS}" ]]; then
   echo "" >> /usr/local/etc/php/php.ini-production
   echo "; Memcached session setup" >> /usr/local/etc/php/php.ini-production
   echo "session.save_handler=memcached" >> /usr/local/etc/php/php.ini-production
   echo "session.save_path=${MEMCACHED_SERVERS}" >> /usr/local/etc/php/php.ini-production
fi

cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/conf.d/php.ini

/usr/local/bin/docker-entrypoint.sh apache2-foreground