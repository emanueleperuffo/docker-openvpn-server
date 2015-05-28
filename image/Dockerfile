FROM emanueleperuffo/baseimage-debian:latest
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

OPENVPN_SERVER_IPS 10.8.0.0
OPENVPN_SERVER_SUBNET 255.255.0.0

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/etc/ssl/openvpn-client"]

EXPOSE 389

CMD ["/sbin/my_init"]