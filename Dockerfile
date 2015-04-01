FROM node:0.12.1-slim

EXPOSE 8080

ADD package.json package.json
ADD app.js app.js
ADD version.env version.env

RUN npm install express --save
CMD env $(cat version.env) node app.js
