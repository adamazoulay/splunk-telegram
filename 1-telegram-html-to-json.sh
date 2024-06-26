#!/bin/bash
#
# This script downloads reviews from a specified file and then
# starts up Splunk to ingest them.
#

# Errors are fatal
set -e

DOCKER_IT=""
DOCKER_V=""

DEVEL_PYTHON=""

if test "$1" == "--devel"
then
	DOCKER_IT="-it"
	DOCKER_V="-v $(pwd)/:/app"
	DEVEL_PYTHON="--devel"
fi


docker run ${DOCKER_IT} ${DOCKER_V} \
	-v "$(pwd):/mnt" \
	-v "$(pwd)/logs:/logs" \
	teh1337z/splunk-telegram-python ${DEVEL_PYTHON} $@

