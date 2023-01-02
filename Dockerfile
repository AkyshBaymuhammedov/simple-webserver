FROM node:16.17.0-bullseye-slim

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install

COPY . ./

CMD ["node", "app.js"]