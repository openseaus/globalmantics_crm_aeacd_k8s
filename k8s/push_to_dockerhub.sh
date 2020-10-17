#/bin/bash
# Script to login to dockerhub and push up newly-created Flask image
# Note that we don't have to push up the mysql image because we didn't
# rebuild or change it in any way

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag flask:latest ea991/flask:latest
docker push ea991/flask:latest
