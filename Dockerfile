FROM alpine:3.15

RUN apk add --no-cache nodejs npm

RUN npm install --global yarn

WORKDIR /app

COPY . /app

RUN yarn install

expose 5000

CMD ["yarn", "start"]
