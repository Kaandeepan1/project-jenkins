FROM ubuntu
RUN apt-get update && apt-get install -y tzdata apache2 && rm -rf /var/lib/apt/lists/*
RUN apt-get -y install apache2
ADD index.html /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
ENV NAME=UAT
