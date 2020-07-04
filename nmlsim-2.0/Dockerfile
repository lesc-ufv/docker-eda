#  vim: set expandtab fdm=marker ts=2 sw=2 tw=80 et :

FROM ubuntu:latest

#
# Avoid interactive prompts
#
ENV DEBIAN_FRONTEND=noninteractive

#
# Update and install dependencies
#
RUN apt update
RUN apt install -y git build-essential gfortran default-jre

#
# Create user
#
RUN useradd -u 1000 -m eda
RUN usermod -a -G $(groups) eda
USER eda
WORKDIR /home/eda/
RUN mkdir files

#
# Clone and compile
#
RUN git clone https://github.com/ruanformigoni/nmlsim-2.0.git nmlsim
WORKDIR /home/eda/nmlsim
RUN make

CMD make interface64
