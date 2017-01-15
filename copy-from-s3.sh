#!/bin/bash

aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/cloudwatch-logs-demo-0.0.1.jar /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar --region=eu-central-1
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/cloudwatch-logs-demo.conf /opt/cloudwatch-logs-demo/ --region=eu-central-1
chown springboot:springboot /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar
chmod 500 /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar