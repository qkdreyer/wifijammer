FROM debian:jessie

RUN apt-get update \
&& apt-get install -y curl git python-scapy \
&& rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz" \
&& tar -xzf node-v0.12.5-linux-x64.tar.gz -C /usr/local --strip-components=1 \
&& rm node-v0.12.5-linux-x64.tar.gz

RUN npm install
RUN npm install forever -g

EXPOSE 3000

WORKDIR /app
ADD . .
VOLUME /log

CMD npm start
