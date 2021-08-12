ARG PROMETHEUS_VERSION
FROM prom/prometheus:${PROMETHEUS_VERSION}

USER root
ADD ./init.d/prometheus-standalone.yaml /etc/prometheus/prometheus.yml

EXPOSE 9990
