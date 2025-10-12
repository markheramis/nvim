FROM archlinux:latest

# Set locale to UTF-8
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TERM=xterm-256color

# Update system and install base packages
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm \
    base-devel \
    git \
    nodejs \
    npm \
    python \
    python-pip \
    fd \
    ripgrep \
    make \
    cmake \
    gcc \
    gcc-libs \
    curl \
    wget \
    ruby \
    perl \
    unzip \
    neovim \
    tree-sitter

# Create a non-root user for building AUR packages
RUN useradd -m -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Install yay (AUR helper) for additional packages
RUN git clone https://aur.archlinux.org/yay.git /tmp/yay && \
    chown -R builder:builder /tmp/yay && \
    sudo -u builder bash -c "cd /tmp/yay && makepkg -si --noconfirm" && \
    rm -rf /tmp/yay

# Install pynvim for Python provider (using --break-system-packages for container)
RUN python -m pip install --upgrade pip pynvim --break-system-packages --ignore-installed

# tree-sitter is already installed from pacman

# Copy Neovim configuration
COPY . /root/.config/nvim

# Set working directory
WORKDIR /root

# Make LSP scripts executable
RUN chmod -R +x /root/.config/nvim/scripts/lsp

# Run LSP installation scripts
RUN /root/.config/nvim/scripts/lsp/phpactor-install.sh
RUN /root/.config/nvim/scripts/lsp/lua-install.sh
RUN /root/.config/nvim/scripts/lsp/bash-install.sh
RUN /root/.config/nvim/scripts/lsp/clang-install.sh
RUN /root/.config/nvim/scripts/lsp/vscode-lang-servers-install.sh
RUN /root/.config/nvim/scripts/lsp/pylsp-install.sh
RUN /root/.config/nvim/scripts/lsp/tsls-install.sh
RUN /root/.config/nvim/scripts/lsp/zls-install.sh
RUN /root/.config/nvim/scripts/lsp/rustanalyzer-install.sh

# # Clean up build dependencies
RUN pacman -Rns --noconfirm base-devel make cmake
RUN pacman -Scc --noconfirm

# Run tests
CMD ["/root/.config/nvim/test.sh"]