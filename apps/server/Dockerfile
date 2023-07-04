FROM node:18 AS base

WORKDIR /app

COPY package*.json ./

COPY ../../package-lock.json .

RUN npm ci

COPY . .

FROM base AS start

ENTRYPOINT [ "npm", "run", "start" ]

FROM base AS dev

ENTRYPOINT [ "npm", "run", "dev" ]