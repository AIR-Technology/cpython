rm -rf /opt/Coreograph/python
mkdir -p /opt/Coreograph/python

./configure --with-ensurepip=install \
    --prefix /opt/Coreograph/python \
    --exec-prefix /opt/Coreograph/python \
    --with-openssl=../openssl/openssl-install \
    --with-ssl-default-suites=openssl \
    CFLAGS="-I../openssl/openssl-install/include" \
    LDFLAGS="-Wl,-rpath,/opt/Coreograph/python/openssl/" \
    --enable-shared \
    --enable-optimizations

make clean; make altinstall

/opt/Coreograph/python/bin/python3.12 -m pip install --upgrade pip

mkdir -p /opt/Coreograph/python/openssl
cp ../openssl/openssl-install/lib64/libcrypto.so.3 /opt/Coreograph/python/openssl
ln -s /opt/Coreograph/python/openssl/libcrypto.so.3 /opt/Coreograph/python/openssl/libcrypto.so 