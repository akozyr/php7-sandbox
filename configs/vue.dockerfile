FROM node:9

RUN mkdir -p /usr/src/app

RUN npm install -g --silent vue-cli

CMD ["npm", "run", "dev"]
