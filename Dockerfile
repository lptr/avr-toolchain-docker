FROM alpine:latest

LABEL org.opencontainers.image.source=https://github.com/lptr/avr-toolchain-docker

# Prepare directory for tools
ARG TOOLS_PATH=/tools
RUN mkdir ${TOOLS_PATH}
WORKDIR ${TOOLS_PATH}

RUN apk --no-cache add ca-certificates wget make cmake avrdude avr-libc gcc-avr

WORKDIR /work
