# ESP8266_RTOS_SDK_Docker
Dockerized containter for esp8266 RTOS SDK and toolchain

[![size](https://img.shields.io/github/repo-size/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![lang](https://img.shields.io/github/languages/top/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![commits](https://img.shields.io/github/commit-activity/t/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![commits](https://img.shields.io/github/commit-activity/t/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![open issues](https://img.shields.io/github/issues-raw/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![closed issues](https://img.shields.io/github/issues-closed/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![pull request](https://img.shields.io/github/languages/top/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![contributers](https://img.shields.io/github/contributors/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![forks](https://img.shields.io/github/forks/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
[![star](https://img.shields.io/github/stars/brinth/ESP8266_RTOS_SDK_Docker)](https://github.com/brinth/ESP8266_RTOS_SDK_Docker)
![build](https://img.shields.io/docker/automated/brinth/ESP8266_RTOS_SDK_Docker)
![pulls](https://img.shields.io/docker/automated/brinth/ESP8266_RTOS_SDK_Docker)
---
### Requirements
* Docker [install](https://docs.docker.com/get-docker/)

### Building ESP8266 RTOS SDK Project
- Step 1:
    Clone this repository `git clone git@github.com:brinth/ESP8266_RTOS_SDK_Docker.git`
- Step 2:
    Build Docker  `docker build -t <image name> .` Replace <image name> with any readable name
- Step 3:
    cd to your esp8266 RTOS SDK project dir and Run `docker build -it --rm -v $PWD:/project -w project make`
