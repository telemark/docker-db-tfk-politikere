###########################################################
#
# Dockerfile for docker-db-tfk-politikere
#
###########################################################

# Setting the base to mongodb 3.1.9
FROM mongo:3.7.9@sha256:ceee38926f41f0f00f4914cdfbd1145597ec81581f658abacc387e1eef148e34

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