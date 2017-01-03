#!/bin/bash

# update
yum update -y

# install awslogs
yum install awslogs -y

# install java 8
yum install java-1.8.0 -y

# uninstall java 7
yum remove java-1.7.0-openjdk -y

# create the working directory
mkdir /opt/cloudwatch-logs-demo

# download the maven artifact from S3
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/cloudwatch-logs-demo-0.0.1.jar /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar --region=eu-central-1
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/logback.xml /opt/cloudwatch-logs-demo/ --region=eu-central-1
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/cloudwatch-logs-demo.conf /opt/cloudwatch-logs-demo/ --region=eu-central-1
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/awscli.conf /etc/awslogs/awscli.conf --region=eu-central-1
aws s3 cp s3://spring-boot-examples/cloudwatch-logs-demo/awslogs.conf /etc/awslogs/awslogs.conf --region=eu-central-1

# create a springboot user to run the app as a service
useradd springboot

# springboot login shell disabled
chsh -s /sbin/nologin springboot

chown springboot:springboot /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar
chmod 500 /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar

# create a symbolic link
ln -s /opt/cloudwatch-logs-demo/cloudwatch-logs-demo.jar /etc/init.d/cloudwatch-logs-demo

# start the cloudwatch-logs-demo and awslogs
service cloudwatch-logs-demo start
service awslogs start

# automatically start and cloudwatch-logs-demo and awslogs if this ec2 instance reboots
chkconfig cloudwatch-logs-demo on
chkconfig awslogs on




