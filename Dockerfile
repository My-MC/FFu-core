FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV PYENV_ROOT="/root/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"
ENV PATH="/root/.poetry/bin:$PATH"

SHELL ["/bin/bash", "-c"]

COPY . /work/

EXPOSE 5050

# Prerequisite Package Installation
RUN apt-get update && \
    apt-get install -y git python3-pip && \
    apt-get install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev && \
    apt-get clean -y && \
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
    cd ~/.pyenv && src/configure && make -C src && \
    echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
    git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile && \
    pyenv install 3.10.4 && \
    pyenv global 3.10.4 && \
    export PATH="/root/.pyenv/shims:$PATH" && \
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - && \
    cd /work/ && \
    poetry install
