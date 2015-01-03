FROM debian:wheezy
MAINTAINER Alfredo Matas <amatas@gmail.com>
RUN apt-get update -q && \
    apt-get -uy dist-upgrade && \
    apt-get install -y --no-install-recommends libexpat1 libncursesw5 libsqlite3-0 libssl1.0.0 mime-support python python-minimal python-pip python-pkg-resources python-setuptools python2.7 python2.7-minimal && \
    apt-get install -y --no-install-recommends binutils build-essential bzip2 cpp cpp-4.7 dpkg-dev g++ g++-4.7 gcc gcc-4.7 libc-dev-bin libc6-dev libclass-isa-perl libdpkg-perl libgdbm3 libgmp10 libgomp1 libitm1 libmpc2 libmpfr4 libquadmath0 libstdc++6-4.7-dev libswitch-perl libtimedate-perl linux-libc-dev make patch perl perl-modules libexpat1-dev libpython2.7 libssl-dev python-dev python2.7-dev zlib1g-dev && \
    pip install ansible && \
    apt-get remove -y --purge binutils build-essential bzip2 cpp cpp-4.7 dpkg-dev g++ g++-4.7 gcc gcc-4.7 libc-dev-bin libc6-dev libclass-isa-perl libdpkg-perl libgdbm3 libgmp10 libgomp1 libitm1 libmpc2 libmpfr4 libquadmath0 libstdc++6-4.7-dev libswitch-perl libtimedate-perl linux-libc-dev make patch perl perl-modules libexpat1-dev libpython2.7 libssl-dev python-dev python2.7-dev zlib1g-dev python2.6 python2.6-minimal && \
    apt-get clean
