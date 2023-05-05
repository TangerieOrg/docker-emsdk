IMAGE_NAME=docker.tangerie.xyz/docker-emsdk_test:latest

docker build -t $IMAGE_NAME -f test.dockerfile .
docker run -it $IMAGE_NAME /bin/bash