FROM resin/raspberrypi3-node:slim

RUN apt-get update \
&& apt-get install -y curl git python-scapy \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 3000
WORKDIR /app
VOLUME /log
ADD . .

RUN npm install
RUN npm install forever -g

CMD npm start
