#Use ubuntu 18.04 as Base
FROM ubuntu:18.04

#Set metadata
LABEL maintainer="Brinth Khanna <brinthkhanna@yahoo.com>"
LABEL version="1.0"
LABEL description="Docker image for ESP8266 RTOS SDK development and build"
LABEL org.opencontainers.image.title="ESP8266 RTOS SDK"
LABEL org.opencontainers.image.description="ESP8266 RTOS SDK Development Environment"
LABEL org.opencontainers.image.source="https://github.com/brinth/ESP8266_RTOS_SDK_Docker"
LABEL org.opencontainers.image.authors="Brinth Khanna"
LABEL org.opencontainers.image.licenses="Apache 2.0"

#Arguments
ARG ESP_DIR=/opt/esp 
ARG LX106_TOOLCHAIN_REMOTE=https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
ARG ESP8266_RTOS_SDK_REMOTE=https://github.com/espressif/ESP8266_RTOS_SDK.git
ARG LX106_TOOLCHAIN_DIR=$ESP_DIR/xtensa-lx106-elf
ARG ESP8266_RTOS_SDK_DIR=$ESP_DIR/ESP8266_RTOS_SDK/

# Refer: https://docs.espressif.com/projects/esp8266-rtos-sdk/en/latest/get-started/linux-setup.html
# Install Prerequisites 
RUN apt-get update -y
RUN apt-get install -y gcc git wget make libncurses-dev flex bison gperf python2.7 python-pip python-serial curl
RUN ln -sf /usr/bin/python2.7 /usr/bin/python && \
	ln -sf /usr/bin/python2.7 /usr/bin/python2

# Download Toolchain
RUN curl -L -o /tmp/xtensa-lx106-elf.tar.gz ${LX106_TOOLCHAIN_REMOTE}

# Create /opt/esp/ directory & use it as working dir
RUN mkdir -p $ESP_DIR 
WORKDIR $ESP_DIR 

# Toolchain Setup
RUN tar -xvf /tmp/xtensa-lx106-elf.tar.gz

# Export Toolchain's bin to PATH
ENV PATH="${PATH}:${LX106_TOOLCHAIN_DIR}/bin"

# Create Alias
RUN alias get_lx106='export PATH="$PATH:$HOME/esp/xtensa-lx106-elf/bin"'

# Print PATH
RUN echo "PATH: ${PATH}"

# Add user to dialout group ( NOT NEEDED as FW upload is not our goal)
#RUN usermod -aG dialout $USER
#RUN chmod -R 777 /dev/ttyUSB0

# Clone ESP8266_RTOS_SDK
RUN cd $ESP_DIR && \
	git clone --recursive ${ESP8266_RTOS_SDK_REMOTE} 

# Export IDF_PATH to PATH
ENV IDF_PATH="${ESP_DIR}/ESP8266_RTOS_SDK"
ENV PATH="${PATH}:${IDF_PATH}"

# Print PATH
RUN echo "PATH: ${PATH}"

# Install Required Python Packages
RUN python -m pip install --user -r ${IDF_PATH}/requirements.txt

# Cleanup Download
RUN rm -rf /tmp/xtensa-lx106-elf.tar.gz
