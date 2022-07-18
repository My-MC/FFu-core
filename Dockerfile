FROM python:3.10.4-bullseye

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.poetry/bin:$PATH"

SHELL ["/bin/bash", "-c"]

COPY . /work/

EXPOSE 5050

RUN apt-get update && \
    apt-get install -y git wget curl && \
    apt-get clean -y

# Prerequisite Package Installation
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - && \
    cd /work/ && \
    poetry install && \
    curl -OL https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-n5.0-latest-linux64-lgpl-5.0.tar.xz && \
    tar -Jxvf ffmpeg-n5.0-latest-linux64-lgpl-5.0.tar.xz && \
    mv ffmpeg-n5.0-latest-linux64-lgpl-5.0/bin/ffmpeg ffmpeg && \
    rm -rf ffmpeg-n5.0-latest-linux64-lgpl-5.0 && \
    rm ffmpeg-n5.0-latest-linux64-lgpl-5.0.tar.xz
