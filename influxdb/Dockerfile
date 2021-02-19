ARG BASE_IMAGE_TAG_PREFIX=latest
FROM influxdb:${BASE_IMAGE_TAG_PREFIX}

EXPOSE 8083 8086

COPY create-database.sh /etc/influxdb/create-database.sh
RUN chmod +x /etc/influxdb/create-database.sh

