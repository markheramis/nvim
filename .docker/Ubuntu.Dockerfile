FROM ubuntu:24.04

# Set locale to UTF-8
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TERM=xterm-256color

# Add Neovim PPA for latest version
RUN apt-get update && apt-get install -y software-properties-common \
    && add-apt-repository ppa:neovim-ppa/unstable -y \
    && apt-get update

RUN apt-get install -y \
    neovim \
    git \
    nodejs \
    npm \
    python3 \
    python3-pip \
    python3-venv \
    fd-find \
    ripgrep \
    make \
    cmake \
    build-essential \
    curl \
    wget \
    locales \
    ruby \
    ruby-dev \
    perl \
    unzip \
    snapd

# Configure locale
RUN locale-gen en_US.UTF-8

# Install pynvim for Python provider (using --break-system-packages for container)
RUN python3 -m pip install --upgrade pip pynvim --break-system-packages --ignore-installed

# Install tree-sitter
RUN npm install -g tree-sitter

# Copy Neovim configuration
COPY . /root/.config/nvim

# Set working directory
WORKDIR /root

RUN chmod -R +x /root/.config/nvim/scripts/lsp

RUN /root/.config/nvim/scripts/lsp/phpactor-install.sh
RUN /root/.config/nvim/scripts/lsp/lua-install.sh
RUN /root/.config/nvim/scripts/lsp/bash-install.sh
RUN /root/.config/nvim/scripts/lsp/clang-install.sh
RUN /root/.config/nvim/scripts/lsp/vscode-lang-servers-install.sh
RUN /root/.config/nvim/scripts/lsp/pylsp-install.sh
RUN /root/.config/nvim/scripts/lsp/tsls-install.sh
RUN /root/.config/nvim/scripts/lsp/zls-install.sh
RUN /root/.config/nvim/scripts/lsp/rustanalyzer-install.sh

RUN apt-get remove --purge -y make cmake build-essential && apt-get autoremove -y

# Run tests
CMD ["/root/.config/nvim/test.sh"]