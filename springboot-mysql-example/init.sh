#!/bin/bash

 java -jar /opt/app/demo-0.0.1-SNAPSHOT.jar \
    --spring.profiles.active=${SPRING_PROFILE:-poc} \
    --spring.datasource.url=jdbc:mysql://${MYSQL_HOST:-mysql}:3306/${MYSQL_DATABASE:-users} \
    --spring.datasource.username=${MYSQL_USER:-user} \
    --spring.datasource.password=${MYSQL_PASSWORD}
