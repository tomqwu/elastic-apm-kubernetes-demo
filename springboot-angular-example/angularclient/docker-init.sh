#!/bin/bash

sed -i "s#USERS_URL#${USERS_URL}#g" /usr/src/app/src/environments/environment.ts

ng serve --host 0.0.0.0
