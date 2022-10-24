rm -rf /opt/Coreograph/python
mkdir -p /opt/Coreograph/python
sudo chown -R $USER:$USER /opt/Coreograph/python
./configure --with-ensurepip=install --prefix /opt/Coreograph/python --exec-prefix /opt/Coreograph/python --enable-shared --enable-optimizations
make clean; make altinstall