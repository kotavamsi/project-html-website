FROM ubuntu:16.04
LABEL Name="suresh"
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html
ADD demo-app .
EXPOSE 80
ENTRYPOINT ["apachectl","-D", "FOREGROUND"]
