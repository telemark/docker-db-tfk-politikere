###########################################################
#
# Dockerfile for docker-db-tfk-politikere
#
###########################################################

# Setting the base to mongodb 3.1.9
FROM mongo:3.7.9@sha256:736eec20a17eafaa988d299902fcaab521cb0ca56af4400f782576afc878d6bc

# Maintainer
MAINTAINER Geir Gåsodden

#### Begin setup ####

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Exposes the port
EXPOSE 27017

# Startup
CMD scripts/index.sh