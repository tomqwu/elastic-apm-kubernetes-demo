FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g @angular/cli

RUN npm install

COPY proxy.conf.json .

COPY . .

EXPOSE 4200

CMD ["/usr/src/app/docker-init.sh"]

