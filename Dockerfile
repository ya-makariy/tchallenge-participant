FROM node:12.7-alpine
COPY . /usr/src/apps/
WORKDIR /usr/src/apps/source
RUN npm install
ENTRYPOINT npm run start -- --host 0.0.0.0 --disableHostCheck true
