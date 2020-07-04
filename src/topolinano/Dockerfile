#  vim: set expandtab fdm=marker ts=2 sw=2 tw=80 et :

FROM ubuntu:latest

#
# Avoid interactive prompts
#
ENV DEBIAN_FRONTEND=noninteractive

#
# Update ubuntu and install topolinano
#
RUN apt update && apt install -y \
  libgl1-mesa-glx libglib2.0-0 qt5-default
COPY topolinano_1.1.0-2_amd64.deb topolinano_1.1.0-2_amd64.deb
RUN apt install -f ./topolinano_1.1.0-2_amd64.deb
RUN rm topolinano_1.1.0-2_amd64.deb
COPY qca.db topolinano

#
# Create user
#
RUN useradd -u 1000 -m eda
RUN usermod -a -G $(groups) eda
USER eda
WORKDIR /home/eda/
RUN mkdir shared

#
# CMD to open external GUI
#
CMD sh /opt/ToPoliNano/bin/ToPoliNano.sh
