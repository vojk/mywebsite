FROM sitespeedio/node:ubuntu-22-04-nodejs-20.9.0
LABEL authors="zalubo"


RUN apt-get update && apt-get install -y npm findutils \
                                               curl

RUN mkdir "/app"

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
