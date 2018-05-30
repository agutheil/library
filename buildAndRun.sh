#!/bin/sh
mvn clean package && docker build -t com.fyayc.micro/library .
docker rm -f library || true && docker run -d -p 8080:8080 -p 4848:4848 --name library com.fyayc.micro/library 