FROM node:18
WORKDIR /app
COPY package.json /app

RUN npm install --only=production

COPY . /app

EXPOSE 3000
CMD ["npm", "start"]