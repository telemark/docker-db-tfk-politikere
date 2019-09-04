###########################################################
#
# Dockerfile for docker-db-tfk-politikere
#
###########################################################

# Setting the base to mongodb 3.1.9
FROM mongo:3.7.9@sha256:fbc5b316430a970543d2e1668164c764977e777a74ffb05c873d0e5df499b6fb

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