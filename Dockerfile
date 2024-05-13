FROM node:20-buster
LABEL authors="zalubo"


RUN apt-get update && apt-get install -y npm findutils \
                                               curl

RUN mkdir "/app"

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
