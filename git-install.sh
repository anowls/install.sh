#!/bin/bash
# Cnetos 7 安装最新版本的Git 安装脚本


# 卸载老版本git
yum remove git

# 安装依赖包
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
yum install gcc perl-ExtUtils-MakeMaker

# 下载git
cd /usr/src
wget https://www.kernel.org/pub/software/scm/git/$1.tar.gz
tar zxf $1.tar.gz

# 编译安装
cd $1
make prefix=/usr/local/git all
make prefix=/usr/local/git install

# 配置git
echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc
source /etc/bashrc

# 显示git版本
git --version
