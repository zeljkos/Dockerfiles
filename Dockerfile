# docker build -t ipv6_sr:latest .
# docker run -it --privileged ipv6_sr /bin/bash
FROM ubuntu:latest
MAINTAINER Zeljko Susnjar zsusnjar@cisco.com
ADD ./apt.conf /etc/apt/apt.conf
RUN apt-get update && apt-get install -y \
	net-tools \
	iputils-ping \
	iperf \
	iperf3 \
	tcpdump \
	quagga

ADD ./ip ./ip
