FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install --yes \
        clonezilla \
        xorriso \
        zip \
    && \
    apt-get autoremove --yes && apt-get clean && rm -rf /var/lib/apt/lists/*

