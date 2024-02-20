FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . /app
ENV REACT_APP_API_URL = http://16.171.60.189:3000
CMD [ "npm","run","start" ]