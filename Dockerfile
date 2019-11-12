FROM quay.io/pypa/manylinux2010_x86_64

LABEL maintainer="Bernd Doser <bernd.doser@h-its.org>"

RUN yum install -y wget \
 && wget http://developer.download.nvidia.com/compute/cuda/repos/rhel6/x86_64/cuda-repo-rhel6-10.1.243-1.x86_64.rpm \
 && yum install -y cuda-repo-rhel6-10.1.243-1.x86_64.rpm \
 && yum install -y cuda

RUN /opt/python/cp38-cp38/bin/pip install --upgrade pip

RUN /opt/python/cp38-cp38/bin/pip install cmake \
 && ln -sf /opt/python/cp38-cp38/lib/python3.8/site-packages/cmake/data/bin/cmake /usr/bin/cmake

RUN /opt/python/cp38-cp38/bin/pip install conan \
 && ln -sf /opt/_internal/cpython-3.8.0/bin/conan /usr/bin/conan

