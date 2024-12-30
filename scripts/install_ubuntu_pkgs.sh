#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

sudo apt-get update

# Install Development Tools
sudo apt-get install -y \
    build-essential \
    cmake \
    make \
    gdb

# Install Networking Tools
sudo apt-get install -y \
    net-tools \
    curl \
    wget \
    traceroute \
    nmap \
    dnsutils

# Install Version Control
sudo apt-get install -y \
    git

# Install Terminal Utilities
sudo apt-get install -y \
    tmux \
    vim \
    nano \
    htop \
    tree

# Install Archiving and Compression Tools
sudo apt-get install -y \
    zip \
    unzip \
    tar \
    p7zip-full

# Install Text Processing Tools
sudo apt-get install -y \
    sed \
    awk \
    jq

# Install System Monitoring and Troubleshooting Tools
sudo apt-get install -y \
    sysstat \
    iotop \
    lsof \
    strace

# Install Disk and Filesystem Management Tools
sudo apt-get install -y \
    parted \
    fdisk \
    ncdu

# Install Security and Cryptography Tools
sudo apt-get install -y \
    gnupg \
    openssh-client \
    fail2ban \
    ufw

# Install Programming Languages and Runtimes
sudo apt-get install -y \
    python3 \
    python3-pip \
    nodejs \
    npm

# Install Miscellaneous Utilities
sudo apt-get install -y \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    locales \
    bash-completion \
    whois

# Apply alias for python3 to python
echo "Applying alias for python3 as python..."

if ! grep -q "alias python=" ~/.bashrc; then
    echo "alias python=python3" >> ~/.bashrc
    echo "Alias applied. Run 'source ~/.bashrc' to reload the shell."
else
    echo "Alias for python already exists in ~/.bashrc"
fi

# Source the .bashrc to make the alias available immediately
source ~/.bashrc

# Confirmation
echo "Alias applied successfully. 'python' now points to:"
python --version