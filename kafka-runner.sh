#!/bin/sh

trap 'echo SIGTERM && /opt/kafka/bin/kafka-server-stop.sh' SIGTERM

/opt/kafka/bin/kafka-server-start.sh /etc/kafka/server.properties &
wait
