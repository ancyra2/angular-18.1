FROM node:20

WORKDIR /usr/src/app

RUN npm install -g @angular/cli

COPY package*.json ./

RUN npm install

COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]
