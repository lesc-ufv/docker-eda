#  vim: set expandtab fdm=marker ts=2 sw=2 tw=80 et :

FROM formigoni/ubuntu-x11:latest

#
# Update and install dependencies
#
RUN apt update
RUN apt install -y git build-essential gfortran default-jre

#
# Create home directory
#
RUN mkdir -p /home/eda/files
WORKDIR /home/eda/

#
# Clone and compile
#
RUN git clone https://github.com/ruanformigoni/nmlsim-2.0.git nmlsim
WORKDIR /home/eda/nmlsim
RUN make
