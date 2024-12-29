#!/bin/bash

sudo apt-get update
sudo apt-get install -y \
    build-essential   # Essential tools for building software (compiler, linker, etc.)
    cmake             # Cross-platform build system for compiling and building software

# Networking tools
    net-tools         # Tools for networking (ifconfig, netstat, etc.)
    curl              # Command-line tool for transferring data with URLs
    wget              # Command-line utility to download files from the web

# Version control
    git               # Version control system for managing code repositories

# Terminal utilities
    tmux              # Terminal multiplexer for managing multiple terminal sessions
    vim               # Popular text editor for editing code and config files
    htop              # Interactive process viewer, an enhanced version of `top`
    tree              # Display directory structures in a tree-like format

# Archiving and compression
    zip               # Utility for creating zip archives
    unzip             # Utility for extracting files from zip archives

# Text processing
    sed               # Stream editor for processing and transforming text