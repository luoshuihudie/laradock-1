ARG NACOS_VERSION
FROM nacos/nacos-server:${NACOS_VERSION}

USER root
ADD ./init.d/ /home/nacos/conf/

EXPOSE 8548 9548 9648
