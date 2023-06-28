FROM node:14

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

# Install webpack and webpack-cli globally
RUN apt-get update -y && \
    apt-get install -y webpack

# Build the project using webpack
RUN npm build

EXPOSE 8080

CMD ["npm", "start"]

