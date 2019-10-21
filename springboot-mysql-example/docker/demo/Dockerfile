FROM openjdk:8-jdk

EXPOSE 8080

RUN mkdir -p /opt/app

WORKDIR /opt/app

ARG JAR_PATH

COPY $JAR_PATH /opt/app

COPY init.sh /opt/app/

RUN chmod +x /opt/app/init.sh

ENTRYPOINT [ "/opt/app/init.sh" ]
