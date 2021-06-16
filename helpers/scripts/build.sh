#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Parse arguments

CONTEXT_DIR="$( cd ${SCRIPT_DIR}/../../images/${1} && pwd )"
IMAGE="${2}"
IFS=',' read -r -a TAGS <<< "${3}"
IFS=',' read -r -a ARGS <<< "${4}"

# Generate Docker build command

BUILD_FLAGS=""

for ARG in "${ARGS[@]}"
do
    BUILD_FLAGS="${BUILD_FLAGS} --build-arg ${ARG}"
done

for TAG in "${TAGS[@]}"
do
    BUILD_FLAGS="${BUILD_FLAGS} -t ${IMAGE}:${TAG}"
done


# Execute Docker build command

docker build ${CONTEXT_DIR} ${BUILD_FLAGS}

# Push image

for TAG in "${TAGS[@]}"
do
    set -e
    docker push "${IMAGE}:${TAG}"
done
