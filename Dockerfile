FROM node:12.16.1-alpine3.11

ARG NPM_TOKEN

# Install dependencies
WORKDIR /opt
COPY package*.json ./
RUN echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > .npmrc \
  && npm install \
  && npm cache clean --force \
  && rm -f .npmrc

ENV PATH /opt/node_modules/.bin:$PATH

# Copy app
WORKDIR /opt/app
COPY . .

RUN npm run build

EXPOSE 3000