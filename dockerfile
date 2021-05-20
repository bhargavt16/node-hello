FROM node
run apt-get update
RUN apt-get install -y nodejs
ADD . /usr/src
WORKDIR /usr/src
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
