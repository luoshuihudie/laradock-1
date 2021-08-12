FROM sonarqube:9.0.0-community

USER root
ADD ./conf/ /opt/sonarqube/conf/
ADD ./thirdPlugins/ /opt/sonarqube/thirdPlugins/
ADD ./plugins/ /opt/sonarqube/extensions/plugins/
ADD ./plugins/ /opt/sonarqube/lib/common/
RUN chown -R sonarqube:sonarqube /opt/sonarqube/lib/common
RUN chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins
RUN ln -s /opt/sonarqube/thirdPlugins/sonar-scanner-4.6.2.2472-linux/bin/sonar-scanner /usr/bin

LABEL maintainer="xiagw <fxiaxiaoyu@gmail.com>"
