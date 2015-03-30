FROM node:0.12.1-slim

EXPOSE 8080

ADD package.json package.json
ADD app.js app.js

RUN npm install express --save
CMD ["node", "app.js"]
