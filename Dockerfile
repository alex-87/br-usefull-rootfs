FROM ubuntu:18.04 AS BUILDER

# Update
RUN apt update && apt upgrade -y

# Install packages
RUN apt install gcc make cpio git wget perl patch gzip bzip2 unzip rsync file bc -y

#Create directory
RUN mkdir /opt/br-usefull-fs

# Copy configuration files
COPY defconfig /opt/br-usefull-fs/
COPY external /opt/br-usefull-fs/external

# Variables
ENV BR_PACKAGE_VERSION="2019.02.9"
ENV BR_PACKAGE_NAME="buildroot-${BR_PACKAGE_VERSION}.tar.gz"

# Get BuildRoot
RUN cd /opt/br-usefull-fs/ && \
    wget https://buildroot.org/downloads/${BR_PACKAGE_NAME} && \
    tar xaf ${BR_PACKAGE_NAME} && \
    rm ${BR_PACKAGE_NAME} && \
    cd "buildroot-${BR_PACKAGE_VERSION}" && \
    make defconfig BR2_DEFONFIG=../defconfig BR2_EXTERNAL=../external && \
    make

