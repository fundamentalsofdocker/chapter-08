  
FROM node:12.12-alpine
ENV POSTGRES_USER dockeruser
ENV POSTGRES_PASSWORD dockerpass
ENV POSTGRES_DB animals
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY ./src src
COPY ./public public
EXPOSE 3000
CMD npm start