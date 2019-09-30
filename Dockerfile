FROM openjdk:8
MAINTAINER Jigish Parikh <jparikh@tabordasolutions.com>

ADD ./config/* /opt/train/config/

ADD ./tarborda-genius-rest-api-1.0.jar /opt/train/tarborda-genius-rest-api-1.0.jar

WORKDIR /opt/train

EXPOSE 9090

ENTRYPOINT [ "/bin/sh", "-c", "/usr/bin/java  -jar /opt/train/tarborda-genius-rest-api-1.0.jar" ]
