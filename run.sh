#!/bin/bash
docker kill mcbedrock
docker rm mcbedrock
docker run -d -p 0.0.0.0:19132:19132 -p 0.0.0.0:19133:19133 \
-p 0.0.0.0:19132:19132/udp -p 0.0.0.0:19133:19133/udp \
--name mcbedrock \
--restart always \
-v /opt/minecraft_bedrock/worlds:/opt/minecraft/worlds:z \
mcbedrock
