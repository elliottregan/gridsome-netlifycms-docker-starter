FROM node:14-alpine

WORKDIR /app

COPY install-packages.sh ./
RUN ["sh", "install-packages.sh"]

COPY package*.json ./
RUN npm install --no-optional && npm cache clean --force

EXPOSE 8080

CMD [ "npm", "run", "develop" ]