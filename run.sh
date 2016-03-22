#!/bin/sh

if [[ ! -d /var/cache/package-cache/00 ]]; then
  squid3 -N -z
fi
exec squid3 -NYCd 1
