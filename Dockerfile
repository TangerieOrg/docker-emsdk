FROM --platform=$BUILDPLATFORM ubuntu:latest

SHELL ["/bin/bash", "-c"]

# Main dependencies
RUN apt-get update && \
    apt-get install -y git build-essential python3 cmake ninja-build clang

WORKDIR /emsdk
RUN git clone https://github.com/emscripten-core/emsdk.git .
RUN git pull

RUN ./emsdk install latest && \
    ./emsdk activate latest && \
    echo "source /emsdk/emsdk_env.sh" >> ~/.bashrc && \
    source ~/.bashrc

COPY entry.sh /entry.sh

SHELL ["/entry.sh", "/bin/bash", "-c"]