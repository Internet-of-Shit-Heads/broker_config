#!/bin/sh
while true
do
 date +%s > /home/mqtt_time/current_time.txt
 mosquitto_pub -h 192.168.44.1 -f /home/mqtt_time/current_time.txt -t IoT/Time --cafile /etc/mosquitto/ca_certificates/ca.pem --tls-version tlsv1.2 --cert /home/debian/certs/dashboard.crt --key /home/debian/certs/dashboard.key
 sleep 1
done
