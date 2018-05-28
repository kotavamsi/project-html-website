FROM ubuntu:16.04
LABEL NAME="SURESH"
RUN apt-get update -y
RUN apt-get install apache2 -y
CMD cp -r /var/lib/jenkins/workspace/demo/* /var/www/html/
EXPOSE 80
ENTRYPOINT ["apachectl","-D", "FOREGROUND"]
