#!/bin/bash
sudo su

# 1. Update package lists
yum update -y

amazon-linux-extras enable java-openjdk21
yum install -y java-21-openjdk

java -version  # Expected: openjdk version "21.0.2" 2024-01-16

yum install -y maven git at

cd /root
git clone https://github.com/Trainings-TechEazy/test-repo-for-devops.git
cd test-repo-for-devops

mvn clean package

nohup java -jar target/hellomvc-0.0.1-SNAPSHOT.jar > output.log 2>&1 &

echo "shutdown -h now" | at now + 10 minutes
