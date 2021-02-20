ARG BASE_IMAGE_TAG_PREFIX=latest
FROM influxdb:${BASE_IMAGE_TAG_PREFIX}
ARG CHANGE_SOURCE=false
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from deb.debian.org to aliyun source
    sed -i 's/deb.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list && \
    sed -i 's/security-cdn.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list \
;fi

EXPOSE 8083 8086

COPY create-database.sh /etc/influxdb/create-database.sh
RUN chmod +x /etc/influxdb/create-database.sh

