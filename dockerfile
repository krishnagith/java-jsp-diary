FROM ubuntu:latest
RUN apt-get update  && apt-get install openjdk-8* -y && apt-get install net-tools -y
RUN apt-get install wget -y && apt-get install unzip -y && apt-get install curl -y
RUN useradd tomcat1 -r -d /home/tomcat -s /bin/bash
#WORKDIR /home/tomcat1
#RUN chmod -R 777 /home/tomcat1
RUN wget https://downloads.apache.org/tomcat/tomcat-7/v7.0.107/bin/apache-tomcat-7.0.107.zip
RUN unzip apache-tomcat-7.0.107.zip
RUN rm apache-tomcat-7.0.107.zip
RUN chmod -R 755 apache-tomcat-7.0.107
COPY . /home/tomcat1/apache-tomcat-7.0.107/webapp/
EXPOSE 8080
