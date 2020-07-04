#  vim: set expandtab syntax=dockerfile fdm=marker ts=2 sw=2 tw=80 et :

FROM ubuntu:20.04

ENV LANG en_US.UTF-8

RUN apt-get update && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      locales && \
      echo "$LANG UTF-8" >> /etc/locale.gen && \
      locale-gen && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y \
      at-spi2-core dbus dbus-x11 procps psutils systemd && \
    env DEBIAN_FRONTEND=noninteractive apt-get install \
      -y --no-install-recommends \
      git build-essential gfortran gnome-session gnome-terminal
