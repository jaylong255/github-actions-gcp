FROM node:14.20 as buildstage

COPY . .

RUN npm install \
  && rm -f .npmrc \ 
  && npm run build

FROM node:14.20-alpine

RUN npm install -g serve

WORKDIR /usr/src/app

COPY --from=buildstage ./build ./build

EXPOSE 3000

CMD ["serve", "-p", "3000", "build"]
