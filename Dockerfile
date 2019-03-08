FROM node:8-alpine

# app workdir
WORKDIR /app

# copy app dependencies
COPY package.json ./

# install dependecies
RUN npm install

# build app source code
COPY . ./

# runtime configs
ENTRYPOINT ["./entrypoint.sh"]