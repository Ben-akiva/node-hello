FROM node:20.17
ARG DEVOPS-LEVEL
MAINTAINER Lidor G
WORKDIR /usr/app
COPY . .
RUN npm install & echo "$DEVOPS-LEVEL"
ENV ENVIRONMENT PRODUCTION 
 
ENTRYPOINT [ "node", "index.js" ] 
