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
RUN apt install -y --no-install-recommends git build-essential openjdk-8-jre

#
# Create user
#
RUN useradd -u 1000 -m eda
RUN usermod -a -G $(groups) eda
USER eda
WORKDIR /home/eda/
RUN mkdir shared

#
# Compile NMLSim
#
COPY nmlsim.tar.xz nmlsim.tar.xz
RUN tar -xf nmlsim.tar.xz
RUN rm nmlsim.tar.xz
WORKDIR ./nmlsim
RUN g++ -std=c++0x cppfiles/Magnet.cpp cppfiles/Circuit.cpp \
  cppfiles/Clock.cpp cppfiles/Readfile.cpp cppfiles/Simulation.cpp \
  cppfiles/main.cpp -o main
RUN chmod +x main

#
# Run NMLSim
#
CMD java -jar nmlsim.jar
