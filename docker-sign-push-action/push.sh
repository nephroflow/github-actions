#!/bin/bash

set -e

PATH_KEYS=$HOME/.docker/trust/private
mkdir -p "$PATH_KEYS"
echo "$DOCKER_CONTENT_TRUST_REPOSITORY_KEY" > "$SIGNER_KEY_HASH.pem"
chmod 600 "$SIGNER_KEY_HASH.pem"
cp "$SIGNER_KEY_HASH.pem" "$PATH_KEYS/$SIGNER_KEY_HASH.key"
docker trust key load "$PATH_KEYS/$SIGNER_KEY_HASH.key"
docker trust sign "$FULL_IMAGE_NAME"
docker push "$FULL_IMAGE_NAME"
DIGEST=$(docker inspect --format='{{index .RepoDigests 0}}' "$FULL_IMAGE_NAME" | sed 's/.*@//g')
echo "::set-output name=digest:$DIGEST"
rm "$PATH_KEYS/$SIGNER_KEY_HASH.key"
docker rmi "$FULL_IMAGE_NAME"