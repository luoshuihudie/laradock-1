ARG ELK_VERSION
FROM docker.elastic.co/kibana/kibana:${ELK_VERSION}

#USER root
ADD ./config/ /usr/share/kibana/config/
#RUN chown -R kibana:kibana /usr/share/kibana/config

EXPOSE 5601
