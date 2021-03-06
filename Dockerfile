# Taken from https://github.com/iaroki/dockerfiles/blob/master/obs/Dockerfile
FROM ubuntu:18.04
MAINTAINER ghandmann
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update && \
    apt install ffmpeg obs-studio -y && \
    apt clean
CMD ["obs"]
