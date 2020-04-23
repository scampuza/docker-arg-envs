#!/bin/bash

echo "The Environment Variable VERSION has been set to ${VERSION}"

echo "The Environment for this container is ${ENVIRONMENT}  and it's config file:"

cat ${ENVIRONMENT}.properties

exit 0
