FROM anapsix/alpine-java

RUN wget -O /tmp/kafka.tgz http://apache-mirror.rbc.ru/pub/apache/kafka/1.1.1/kafka_2.11-1.1.1.tgz 
RUN mkdir -p /opt/kafka
RUN tar -xzf /tmp/kafka.tgz --directory /opt/kafka --strip-components 1
COPY server.properties /etc/kafka/server.properties
COPY kafka-runner.sh /kafka-runner.sh

CMD ["/kafka-runner.sh"]
