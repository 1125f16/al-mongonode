FROM node:6.5.0

WORKDIR /app

RUN npm install nodemon -g

COPY src/package.json /app/package.json
RUN npm install

RUN mkdir js
COPY src/js/server.js /app/js

EXPOSE 3000