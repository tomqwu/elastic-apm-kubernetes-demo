#!/bin/bash

 java -jar /opt/voter-service-0.2.0.jar \
    --spring.profiles.active=${SPRING_PROFILE:-poc} \
    --spring.datasource.url=jdbc:mysql://${MYSQL_HOSTNAME}:3306/${MYSQL_DATABASE_NAME} \
    spring.datasource.username=${MYSQL_USERNAME} \
    spring.datasource.password=${MYSQL_PASSWORD}
