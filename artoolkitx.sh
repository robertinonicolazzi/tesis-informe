sudo apt-get install build-essential cmake git pkg-config
sudo apt-get install libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
git clone https://github.com/opencv/opencv
cd opencv
mkdir build-linux
cd build-linux
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF -DBUILD_JAVA=OFF '-DCMAKE_INSTALL_RPATH="$ORIGIN/../lib"'
make
make install DESTDIR=${PWD}/installed
