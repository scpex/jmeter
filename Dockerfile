FROM ubuntu:latest

COPY ./apache-jmeter-4.0.tgz /opt

RUN apt-get update --fix-missing -y && apt-get upgrade -y &&\
    apt-get install openjdk-8-jdk -y && apt-get install openjdk-8-jre -y &&\
    tar -xvf /opt/apache-jmeter-4.0.tgz -C /opt && rm /opt/apache-jmeter-4.0.tgz &&\
    mkdir /opt/apache-jmeter-4.0/bin/test

ADD ./test /opt/apache-jmeter-4.0/bin/test

COPY ./script.sh /opt/apache-jmeter-4.0/bin

WORKDIR /opt/apache-jmeter-4.0/bin

RUN chmod +x script.sh

CMD [ "./script.sh" ]
