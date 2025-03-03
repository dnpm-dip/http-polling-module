FROM openjdk:21

LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.source=https://github.com/dnpm-dip/http-polling-module-docker
LABEL org.opencontainers.image.description="HttpPollingModule Docker Image"

ARG MODULE_JAR

COPY $MODULE_JAR /opt/HttpPollingModule.jar

WORKDIR /opt

ENTRYPOINT ["java", "-jar", "HttpPollingModule.jar", "config.properties"]

