IMAGE_NAME=docker.tangerie.xyz/docker-emsdk:latest
ARCH_LIST=linux/arm64/v8,linux/amd64

docker buildx build --platform $ARCH_LIST -t $IMAGE_NAME .