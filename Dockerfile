FROM payara/micro
COPY ./target/library.war /opt/payara/deployments
