FROM node:20-alpine
ARG PORT
LABEL org.opencontainers.image.source https://github.com/bumstaerk/docker-swarm-practice
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE ${PORT}
COPY . /app
CMD ["npm","start"]
