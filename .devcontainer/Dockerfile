# Start with Ubuntu (so it's like "docker run -it ubuntu")
FROM ubuntu:22.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update & install all dependencies (build tools, curl, git, nano, SSL, pkg-config)
RUN apt update && apt install -y \
    build-essential \
    curl \
    git \
    nano \
    pkg-config \
    libssl-dev

# Install Rust via rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install soundnessup & update it
RUN curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash && \
    source ~/.bashrc && \
    soundnessup install && \
    soundnessup update

# Default work directory
WORKDIR /workspace
