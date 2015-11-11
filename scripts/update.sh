#!/bin/bash
IMPORT_PATH=../data/
DB=tfk
COLLECTION=politicians

function fileExist {
  if [ -f $1 ]; then
     echo "*** File $1 exists ***"
  else
     echo "*** File $1 does not exist ***"
     exit 1
  fi
}

function setBaseName {
  filename=$(basename $1)
}

function impCollection {
  mongoimport -d $DB -c $COLLECTION --drop --file $1 --jsonArray
}

for f in $IMPORT_PATH*.json; do
  fileExist $f
  setBaseName $f
  echo "*** Importing file $filename ***"
  impCollection $f
done

