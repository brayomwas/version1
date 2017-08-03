#comment
#Start from a base Image
FROM ubuntu
RUN apt-get update && apt-get -y upgrade && apt-get -y install openjdk-7-jre && apt-get -y install openjdk-7-jdk && apt-get -y install sbt
#Create working directory
RUN mkdir ussd/
WORKDIR ussd/
#Install framework
COPY . ussd/
RUN cd ussd/ && sbt
CMD ["sbt", "run"]
