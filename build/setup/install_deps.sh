#!/bin/bash
apt-get update
apt-get install -y wget curl gnupg2 lsb-release locales cmake git
# For building other libraries
apt-get install -y jstest-gtk meshlab libprotobuf-dev libprotoc-dev protobuf-compiler ninja-build sip-dev python3-empy libtinyxml2-dev libeigen3-dev
# Install ROS packages
apt-get install -q -y python3-rosinstall-generator python3-wstool python3-rosinstall libasio-dev libssl-dev rti-connext-dds-5.3.1
# Download Roborio toolchain
curl -SL https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz | sh -c 'mkdir -p /usr/arm-frc2021-linux-gnueabi && cd /usr/arm-frc2021-linux-gnueabi && tar xzf - --strip-components=2'