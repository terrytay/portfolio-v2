FROM node:12.20.1-alpine3.12 as build

ARG buildConfig

WORKDIR /app

COPY . .

RUN npm install && npm run build

ENTRYPOINT node server.js

EXPOSE 8080
