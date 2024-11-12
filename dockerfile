FROM node:16 As development

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN npm install --force

COPY . .

RUN npm run build

CMD "yarn" "start:dev"