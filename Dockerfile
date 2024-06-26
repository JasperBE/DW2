FROM ubuntu:20.04

RUN apt update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y apache2

RUN apt install -y php

COPY html /var/www/html/

WORKDIR /var/www/html/

RUN touch buildtime.txt

RUN date > buildtime.txt

EXPOSE 80/tcp

CMD service apache2 start && bash