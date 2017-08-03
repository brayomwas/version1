#comment
#Start from a base Image
FROM ubuntu
RUN apt-get update && apt-get install openjdk-8-jre && apt-get install openjdk-8-jdk && apt-get install sbt
#Create working directory
RUN mkdir ussd/
WORKDIR ussd/
#Install framework
COPY . ussd/
RUN cd ussd/ && sbt
CMD ["sbt run"]
