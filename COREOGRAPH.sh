./configure --enable-shared --enable-optimizations
make clean; make
mkdir -p /opt/Coreograph/python/lib/python3.12/lib-dynload
cp python /opt/Coreograph/python
cp -r Lib/. /opt/Coreograph/python/lib/python3.12
cp -r build/lib.linux-x86_64-3.12/. /opt/Coreograph/python/lib/python3.12/lib-dynload