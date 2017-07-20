FROM node:boron-alpine
EXPOSE 3000
WORKDIR /app
COPY package.json .
RUN npm install
ENV PATH /app/node_modules/.bin:$PATH
WORKDIR src
COPY . .
CMD [ "npm", "start" ]
