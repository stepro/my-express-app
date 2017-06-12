FROM node:boron-alpine
ENV DOCKER_SYNC_TARGET=/app
EXPOSE 3000
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD [ "npm", "start" ]