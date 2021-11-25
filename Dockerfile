FROM ghcr.io/linuxserver/wireguard

# set version label
ARG BUILD_DATE
ARG VERSION
ARG WIREGUARD_RELEASE
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="cyberatz"

ENV DEBIAN_FRONTEND="noninteractive"
ENV HEALTH_HOST

# add local files
COPY healthcheck /healthcheck

# ports and volumes
EXPOSE 51820/udp

