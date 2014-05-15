#!/bin/sh
# $FreeBSD: release/10.0.0/tools/regression/pjdfstest/tests/mknod/05.t 210967 2010-08-06 20:51:39Z pjd $

desc="mknod returns EACCES when search permission is denied for a component of the path prefix"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..12"

n0=`namegen`
n1=`namegen`
n2=`namegen`

expect 0 mkdir ${n0} 0755
cdir=`pwd`
cd ${n0}
expect 0 mkdir ${n1} 0755
expect 0 chown ${n1} 65534 65534
expect 0 -u 65534 -g 65534 mknod ${n1}/${n2} f 0644 0 0
expect 0 -u 65534 -g 65534 unlink ${n1}/${n2}
expect 0 chmod ${n1} 0644
expect EACCES -u 65534 -g 65534 mknod ${n1}/${n2} f 0644 0 0
expect 0 chmod ${n1} 0755
expect 0 -u 65534 -g 65534 mknod ${n1}/${n2} f 0644 0 0
expect 0 -u 65534 -g 65534 unlink ${n1}/${n2}
expect 0 rmdir ${n1}
cd ${cdir}
expect 0 rmdir ${n0}