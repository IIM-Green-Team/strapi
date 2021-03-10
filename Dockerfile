FROM strapi/strapi

WORKDIR /srv/app

COPY ./package.json ./

COPY ./yarn.lock ./

RUN yarn install

COPY . .

ENV NODE_ENV production

EXPOSE 1337
