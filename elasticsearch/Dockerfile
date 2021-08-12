ARG ELK_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

USER root
ADD ./config/ /usr/share/elasticsearch/config/
#RUN chown -R root:elasticsearch /usr/share/elasticsearch/config

ARG ELK_VERSION
#RUN elasticsearch-plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/7.12.1.0/elasticsearch-sql-7.12.1.0.zip
RUN elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${ELK_VERSION}/elasticsearch-analysis-pinyin-${ELK_VERSION}.zip
RUN elasticsearch-plugin install analysis-icu

EXPOSE 9200 9300
