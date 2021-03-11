FROM strapi/strapi:3.5.3

WORKDIR /opt/app

COPY ./package.json ./

COPY ./yarn.lock ./

RUN yarn global add strapi@3.5.3

RUN yarn install

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
