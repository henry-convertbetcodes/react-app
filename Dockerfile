FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . /app

ENV REACT_APP_API_URL = http://13.53.39.118:31000 
ENV REACT_APP_LESSON_DAY = day1

CMD [ "npm","run","start" ]