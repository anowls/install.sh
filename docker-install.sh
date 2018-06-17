#!/bin/bash
# Centos 7 docker 安装脚本

# 卸载docker早期版本
yum remove docker docker-common docker-selinux docker-engine

# 安装依赖软件包
yum install -y yum-utils device-mapper-persistent-data lvm2

# 设置镜像仓库
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 更新软件包索引
yum makecache fast

# 安装docker
yum install docker-ce

# 设置开机启动
systemctl enable docker
