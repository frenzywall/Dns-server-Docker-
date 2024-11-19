FROM ubuntu:22.04
RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc && \
    apt-get clean
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.options /etc/bind/named.conf.options
COPY db.collabapp.com /etc/bind/zones/db.collabapp.com
EXPOSE 53/udp
EXPOSE 53/tcp
CMD ["named", "-g", "-c", "/etc/bind/named.conf"]
