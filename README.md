# Terraria Server in Docker

This repository contains the Dockerfile and associated assets for building a Terraria server Docker image

## Requirements
#### Istall docker

Fedora / Centos
```
yum install -y docker
```

Ubuntu / Debian

```
apt-get -y install docker
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


## Run the Container

You then run the container with Makefile present in the project:

```
make create
```

## Start server 
enter the container:

```
docker exec -it terraria-server /bin/bash
```

run the `server-start.sh` file

```
bash server-start.sh
```
## Access Server CLI

The server is started with a `screen` session  
You can access the server cli with the following command:

```
screen -x
```

# Container management

#### Create the container

```
make create
```

#### Start the container:

```
make start
```

#### Stop the container

```
make stop
```

#### Remove the container

```
make remove
```
