#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install openvpn
$minimal_apt_get_install openvpn
#client config dir
mkdir /etc/openvpn/clients

## Enable openvpn-server
mkdir /etc/service/openvpn-server
cp /build/runit/openvpn-server /etc/service/openvpn-server/run