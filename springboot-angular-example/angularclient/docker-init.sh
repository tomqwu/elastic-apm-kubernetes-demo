#!/bin/bash

sed -i "s#USERS_URL#${USERS_URL}#g" /usr/src/app/src/environments/environment.ts
sed -i "s#APM_URL#${ELASTIC_APM_SERVER_URLS}#g" /usr/src/app/src/environments/environment.ts

ng serve --host 0.0.0.0 --disable-host-check
