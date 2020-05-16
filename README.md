# Terraria Server in Docker

This repository contains the Dockerfile and associated assets for building a Terraria server 1.4.0.1 Docker image

## Requirements
#### Install docker

Fedora / Centos
```
yum install -y docker.io
```

Ubuntu / Debian

```
apt-get -y install docker.io
```

#### Start the service:

```
systemctl start docker
```

#### Create directory which will hold the server world data:

```
mkdir /data
```

## Create config file

edit the `serverconfig.txt` file to customize server configuration   
In this link you can find the official documentation: [https://terraria.gamepedia.com/Server](https://terraria.gamepedia.com/Server)

## Mount Configuration

Mount configuration in container like configmap (kubernetes) or Volume (Docker only)