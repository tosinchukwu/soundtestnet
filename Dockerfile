# Use official Ubuntu as the base image
FROM ubuntu:22.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install common tools
RUN apt update && apt install -y \
    bash \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /workspace

# By default, start a bash shell
CMD ["/bin/bash"]