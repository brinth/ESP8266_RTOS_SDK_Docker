# ESP8266_RTOS_SDK_Docker
Dockerized containter for esp8266 RTOS SDK and toolchain

---
[![size](https://img.shields.io/github/repo-size/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![lang](https://img.shields.io/github/languages/top/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![commits](https://img.shields.io/github/commit-activity/t/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![contributers](https://img.shields.io/github/contributors/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![pulls](https://img.shields.io/docker/pulls/brinth/esp8266_rtos_sdk)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![forks](https://img.shields.io/github/forks/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![star](https://img.shields.io/github/stars/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![open issues](https://img.shields.io/github/issues-raw/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![closed issues](https://img.shields.io/github/issues-closed/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![pull requests](https://img.shields.io/github/issues-pr/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![Build & Push Docker image to Docker HUB](https://github.com/brinth/ESP8266_RTOS_SDK_Docker/actions/workflows/main.yml/badge.svg)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker/actions/workflows/main.yml)

---
### Requirements
* Docker [install](https://docs.docker.com/get-docker/)

---
### Building ESP8266 RTOS SDK Project
- **Step 1:** Clone this repository 
```bash
git clone git@github.com:brinth/ESP8266_RTOS_SDK_Docker.git
```
- **Step 2:** cd to cloned directory & Build Docker image
```bash
docker build -t <image name> .
```
Replace `<image name>` with any readable name
- **Step 3:** cd to your ESP8266 RTOS SDK project dir and Run Docker container with previously build Docker image
```bash
docker run -it --rm -v $PWD:/project -w /project <image name>  make
```

---
### Flashing ESP8266 RTOS SDK Project
Run Command
```bash
docker run -it --rm --privileged -v $PWD:/project -v <local device file>:/dev/ttyUSB0 -w /project <image name> make flash
```
Replace `<local device file>` with the enumerated device file name like `/dev/ttyUSB0`

---
### Monitoring ESP8266 RTOS SDK Project
Run Command
```bash
docker run -it --rm --privileged -v $PWD:/project -w /project <image name> make monitor
```
