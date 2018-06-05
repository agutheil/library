# Build
mvn clean package && docker build -t com.fyayc.micro/library .

# RUN
docker rm -f library || true && docker run -d -p 8080:8080 -p 4848:4848 --name library com.fyayc.micro/library 

# Deploy
see jenkis job http://ec2-35-157-159-105.eu-central-1.compute.amazonaws.com/job/library/ 
