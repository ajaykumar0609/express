FROM node:18-alpine

npm install -g express-generator@4

express /tmp/foo && cd /tmp/fo

WORKDIR . .

COPY ["package.json" ]

COPY . .

CMD [" npm start "]
