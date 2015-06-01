FROM emanueleperuffo/baseimage-debian:latest
MAINTAINER Emanuele Peruffo <info@emanueleperuffo.com>

ENV HOME /root
ADD . /build

ENV OPENVPN_SERVER_IP 10.8.0.1
ENV OPENVPN_SERVER_NETMASK 255.255.0.0
ENV OPENVPN_SERVER_DEV tun10

RUN /build/prepare.sh && \
	/build/services.sh && \
	/build/cleanup.sh

VOLUME ["/etc/ssl/openvpn-server", "/vpn/ccd-dir"]

EXPOSE 1194

CMD ["/sbin/my_init"]