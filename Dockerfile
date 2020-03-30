FROM node:12.2.0-alpine

WORKDIR /usr/src/app
ENV CI true
ENV PORT 8090
COPY package.json .
RUN yarn

EXPOSE 8090
COPY . .
CMD ["yarn", "start"]