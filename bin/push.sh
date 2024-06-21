#!/bin/bash

# Errors are fatal
set -e

#
# Change to the parent of this script
#
pushd $(dirname $0) > /dev/null
cd ..

echo "# "
echo "# Building our images..."
echo "# "
./bin/build.sh

echo "# "
echo "# Pushing containers to Docker Hub..."
echo "# "
docker push teh1337z/splunk-telegram-python
docker push teh1337z/splunk-telegram

echo "# Done!"

