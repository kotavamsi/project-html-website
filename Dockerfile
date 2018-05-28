#FROM ubuntu:16.04
#LABEL NAME="SURESH"
#RUN apt-get update -y
#RUN apt-get install apache2 -y
#CMD cp -r /var/lib/jenkins/workspace/demo/* /var/www/html/
#EXPOSE 80
#ENTRYPOINT ["apachectl","-D", "FOREGROUND"]

FROM ubuntu:16.04
LABEL  author="suresh"
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
WORKDIR /temp
RUN wget https://github.com/rcp-suresh/project-html-website/archive/master.zip
RUN unzip master.zip
RUN cp -r project-html-website-master/* /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
