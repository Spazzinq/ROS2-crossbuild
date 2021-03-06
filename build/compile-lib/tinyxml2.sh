#!/bin/bash
wget https://github.com/leethomason/tinyxml2/archive/6.0.0.tar.gz
tar -xzvf 6.0.0.tar.gz
cd tinyxml2-6.0.0
#cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=~/2018RobotCode/zebROS_ws/arm-frc-gnueabi.toolchain.cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr/arm-frc-linux-gnueabi -DCMAKE_POSITION_INDEPENDENT_CODE=ON .
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_TOOLCHAIN_FILE=$USER_HOME/cmake/arm-frc-gnueabi.toolchain.cmake \
    -DCMAKE_INSTALL_PREFIX:PATH=/usr/arm-frc2021-linux-gnueabi \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -DBUILD_SHARED_LIBS:BOOL=OFF \
    -DBUILD_STATIC_LIBS:BOOL=ON \
    -DBUILD_TESTS:BOOL=OFF .
sudo make -j8 install
cd
rm -rf 6.0.0.tar.gz tinyxml2-6.0.0