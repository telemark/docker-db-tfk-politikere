###########################################################
#
# Dockerfile for docker-db-tfk-politikere
#
###########################################################

# Setting the base to mongodb 3.1.9
FROM mongo:3.7.9@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102

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