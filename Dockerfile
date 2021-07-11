FROM cragonnyunt/development-docker:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip \
    make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils \
    tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

USER devuser

RUN curl https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | zsh && \
    echo "export PATH=\"\$HOME/.pyenv/bin:\$HOME/.local/bin:\$HOME/.pyenv/shims/:\$PATH\"" >> ~/.zshrc && \
    echo "eval \"\$(pyenv init -)\"" >> ~/.zshrc && \
    echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.zshrc

RUN ~/.pyenv/bin/pyenv install -v 3.8.11 && \
    ~/.pyenv/bin/pyenv global 3.8.11 && \
    ~/.pyenv/bin/pyenv rehash

RUN pip --no-cache-dir install pipenv virtualenv ipython

USER root
