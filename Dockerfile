FROM node:20-alpine
ARG PORT
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE ${PORT}
COPY . /app
CMD ["npm","start"]
