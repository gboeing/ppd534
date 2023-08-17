#!/bin/bash
TAG="gboeing/ppd534:latest"
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q) --force

set -e
docker login
docker buildx build --push --platform=linux/amd64,linux/arm64 -t $TAG .

# import package and print its version as a test, then export conda env to yml
echo "Pushed $TAG to Docker Hub"
echo "Testing image..."
IMPORTED_VERSION=$(docker run --rm $TAG /bin/bash -c "python -c \"import osmnx; print(osmnx.__version__)\"")
echo "Imported osmnx version $IMPORTED_VERSION"
docker run --rm -v "$PWD":/home/jovyan/work $TAG /bin/bash -c "conda env export -n base > /home/jovyan/work/environment.yml"
echo "Exported conda env to environment.yml"
