##Download base image Ubuntu
FROM ubuntu:bionic

MAINTAINER Lorenzo Comotti

##Define the ENV variable
ENV TERRARIA_VERSION=1.4.0.1
ENV TERRARIA_CONF /opt/terraria/Linux/

##Update Software repository and install required pakages
RUN apt update && apt -y upgrade && apt -y install unzip wget

##Download Terraria Server
RUN cd /opt && wget https://terraria.org/server/terraria-server-1401.zip -O /opt/terraria-server-1401.zip

##Extract the archive
RUN mkdir -p /opt/terraria && unzip -o /opt/terraria-server-1401.zip -d /opt/terraria && mv -vn /opt/terraria/1401/* /opt/terraria/ && rm -R -f /opt/1401 && rm /opt/terraria-server-1401.zip

##Copy start script
COPY server-start.sh ${TERRARIA_CONF}
RUN chmod +x ${TERRARIA_CONF}server-start.sh && chmod +x  ${TERRARIA_CONF}TerrariaServer.bin.x86*

WORKDIR "/opt/terraria/Linux"

ENTRYPOINT [ "/opt/terraria/Linux/server-start.sh" ]

EXPOSE 7777
