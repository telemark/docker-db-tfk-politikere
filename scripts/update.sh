#!/usr/bin/env bash
mongoimport -h 127.0.0.1:27017 -d tfk -c politicians data/politicians.json --jsonArray