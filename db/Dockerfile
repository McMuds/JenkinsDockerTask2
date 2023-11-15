# Derived from official mysql image (our base image)
FROM mysql:5.7
# Use mysql 5.7 as the flask-app is not set up to work with later versions
ENV MYSQL_DATABASE=flask-db
# Add a database and root password
ENV MYSQL_ROOT_PASSWORD=supersekrit-password
# For hints on how to do this, consult the mysql 5.7 image documentation

# Add the content of the .sql file to your image
COPY CreateTable.sql docker-entrypoint-initdb.d/CreateTable.sql
# All scripts copied to docker-entrypoint-initdb.d/ are automatically
# executed during container startup
