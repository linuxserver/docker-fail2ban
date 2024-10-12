# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-alpine:3.20

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="nomandera,nemchik"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

RUN \
  echo "**** install runtime packages ****" && \
  apk add --no-cache \
    fail2ban \
    logrotate \
    msmtp \
    nftables \
    whois && \
  echo "**** copy fail2ban confs to /defaults ****" && \
  mkdir -p \
    /defaults/fail2ban && \
  curl -o \
    /tmp/fail2ban-confs.tar.gz -L \
    "https://github.com/linuxserver/fail2ban-confs/tarball/master" && \
  tar xf \
    /tmp/fail2ban-confs.tar.gz -C \
    /defaults/fail2ban/ --strip-components=1 --exclude=linux*/.editorconfig --exclude=linux*/.gitattributes --exclude=linux*/.github --exclude=linux*/.gitignore --exclude=linux*/LICENSE && \
  echo "**** fix logrotate ****" && \
  sed -i "s#/var/log/messages {}.*# #g" \
    /etc/logrotate.conf && \
  sed -i 's#/usr/sbin/logrotate /etc/logrotate.conf#/usr/sbin/logrotate /etc/logrotate.conf -s /config/log/logrotate.status#g' \
    /etc/periodic/daily/logrotate && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    $HOME/.cache

# add local files
COPY root/ /

# ports and volumes
VOLUME /config
