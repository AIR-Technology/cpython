rm -rf /opt/Coreograph/python
./configure --enable-shared --enable-optimizations
make clean; make
mkdir -p /opt/Coreograph/python/lib/python3.12/lib-dynload
cp python /opt/Coreograph/python
cp -r Lib/. /opt/Coreograph/python/lib/python3.12
cp -r Modules/*.so /opt/Coreograph/python/lib/python3.12/lib-dynload