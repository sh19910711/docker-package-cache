#!/bin/sh

run() {
  local cache_dir=/var/cache/package-cache
  mkdir -p ${cache_dir}
  chown -R proxy. ${cache_dir}
  if [ ! -d ${cache_dir}/00 ]; then
    squid3 -N -z
  fi
  exec squid3 -NYCd 1
}

run $@
