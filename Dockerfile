FROM alpine:latest

ENV APP_MODE server
ENV SERVER_PORT 5201
ENV SERVER_IPFQND ""
ENV DOWNLOAD_MODE reverse

LABEL maintainer="Mark Ley - report issues & requests here https://github.com/goatie999/iperf3-docker"

RUN apk update && \
		apk add iperf3 && \
		apk cache clean

EXPOSE 5201