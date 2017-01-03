#!/bin/bash

mvn clean package
aws s3 cp target/cloudwatch-logs-demo-0.0.1.jar s3://spring-boot-examples/cloudwatch-logs-demo/
aws s3 cp logback.xml s3://spring-boot-examples/cloudwatch-logs-demo/
aws s3 cp cloudwatch-logs-demo.conf s3://spring-boot-examples/cloudwatch-logs-demo/
aws s3 cp awslogs/awscli.conf s3://spring-boot-examples/cloudwatch-logs-demo/
aws s3 cp awslogs/awslogs.conf s3://spring-boot-examples/cloudwatch-logs-demo/



