FROM node:alpine
WORKDIR /code
COPY package.json /code
RUN npm config set strict-ssl false
RUN npm -v
RUN node -v
RUN npm install -g @angular/cli
RUN npm install
COPY . /code
CMD [ "ng","serve","--host","0.0.0.0" ]