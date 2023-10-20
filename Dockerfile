FROM node:18.14.2-alpine

WORKDIR /calculator


COPY package.json . pnpm-lock.yaml ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
