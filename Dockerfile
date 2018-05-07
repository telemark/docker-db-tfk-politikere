###########################################################
#
# Dockerfile for docker-db-tfk-politikere
#
###########################################################

# Setting the base to mongodb 3.1.9
FROM mongo:3.1.9@sha256:de6fdf94af664c04243ad3f13c0f6abbee9341dde386dc37c024ca3a4f0d5d2b

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