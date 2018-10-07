FROM ubuntu:xenial
ENV maintatiner="Jon Mainguy <jon@soh.re>"
ENV LD_LIBRARY_PATH=/opt/minecraft
ENV minecraft-version=1.6.1.0
RUN apt-get update -y && apt-get install -y unzip libcurl3 wget
RUN mkdir -p /opt/minecraft
WORKDIR /opt/minecraft
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.6.1.0.zip
RUN unzip bedrock-server-1.6.1.0.zip
EXPOSE 19132
EXPOSE 19133
CMD ["/opt/minecraft/bedrock_server"]
