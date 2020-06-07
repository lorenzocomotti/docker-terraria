##Download base image Ubuntu
FROM ubuntu:bionic

MAINTAINER Lorenzo Comotti

##Define the ENV variable
ENV TERRARIA_VERSION=1.4.0.5
ENV TERRARIA_CONF /opt/terraria/Linux/

##Update Software repository and install required pakages
RUN apt update && apt -y upgrade && apt -y install unzip wget

##Download Terraria Server
RUN cd /opt && wget https://www.terraria.org/system/dedicated_servers/archives/000/000/039/original/terraria-server-1405.zip?1591301368 -O /opt/terraria-server-1405.zip

##Extract the archive
RUN mkdir -p /opt/terraria && unzip -o /opt/terraria-server-1405.zip -d /opt/terraria && mv -vn /opt/terraria/1405/* /opt/terraria/ && rm -R -f /opt/1405 && rm /opt/terraria-server-1405.zip

##Copy start script
COPY server-start.sh ${TERRARIA_CONF}
RUN chmod +x ${TERRARIA_CONF}server-start.sh && chmod +x  ${TERRARIA_CONF}TerrariaServer.bin.x86*

WORKDIR "/opt/terraria/Linux"

ENTRYPOINT [ "/opt/terraria/Linux/server-start.sh" ]

EXPOSE 7777
