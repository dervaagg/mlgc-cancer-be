
FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

ENV MODEL_URL=https://storage.googleapis.com/prod-cancer-model/model-in-prod/model.json

CMD [ "npm", "start" ]