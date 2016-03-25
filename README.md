# Usage

```
$ sudo docker run --name package-cache -v /host/cache:/var/cache/package-cache -d
$ sudo docker exec package-cache tail -f /var/log/squid3/access.log
```

## centos

```
$ sudo docker run -e http_proxy=proxy:3128 -e https_proxy=proxy:3128 --link package-cache:proxy -ti centos
```
