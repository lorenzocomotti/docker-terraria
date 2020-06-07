# Terraria Server in Docker

This repository contains the Dockerfile and associated assets for building a Terraria server 1.4.0.5 Docker image

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

#### Create a directory for your world file, configuration, and logs

```
mkdir -p $HOME/terraria/worlds
mkdir -p $HOME/terraria/configurations
```

## Create config file

Create or edit the `$HOME/terraria/configurations/serverconfig.txt` file to customize server configuration.
In this link you can find the official documentation: [https://terraria.gamepedia.com/Server](https://terraria.gamepedia.com/Server)

## Start your docker container

```
sudo docker run -it -p 7777:7777 -v $HOME/terraria/worlds:/opt/terraria/worlds -v $HOME/terraria/configurations/serverconfig.txt:/opt/terraria/serverconfig.txt --name="terraria" lorenzocomotti/docker-terraria:1.4.0.5
```