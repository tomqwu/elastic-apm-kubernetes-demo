FROM openjdk:8-jdk

COPY build/libs/demo-0.0.1-SNAPSHOT.jar /opt

COPY docker-init.sh /opt

ENTRYPOINT ["/opt/docker-init.sh"]
