FROM debian:jessie

RUN apt-get -q update && apt-get install -qy squid3

EXPOSE 3128/tcp

COPY squid.conf /etc/squid3/squid.conf
COPY run.sh /usr/sbin/run.sh
CMD /usr/sbin/run.sh
