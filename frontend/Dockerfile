FROM node:22

WORKDIR /root/

COPY . .

EXPOSE 3000

RUN npm install

ENTRYPOINT ["exec", "npm", "run", "dev"]
