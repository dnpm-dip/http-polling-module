FROM openjdk:21

LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.source=https://github.com/dnpm-dip/http-polling-module-docker
LABEL org.opencontainers.image.description="HttpPollingModule Docker Image"

COPY ./HttpPollingModule-1.1.jar /opt/HttpPollingModule.jar

WORKDIR /opt

ENTRYPOINT ["java", "-jar", "HttpPollingModule.jar", "config.properties"]

