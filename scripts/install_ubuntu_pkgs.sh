#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

sudo apt-get update

sudo apt-get install -y \
    # Development tools
    build-essential   # Essential tools for building software (compiler, linker, etc.)
    cmake             # Cross-platform build system for compiling and building software
    make              # Build automation tool for compiling and linking programs
    gdb               # GNU Debugger for debugging C/C++ programs

    # Networking tools
    net-tools         # Tools for networking (ifconfig, netstat, etc.)
    curl              # Command-line tool for transferring data with URLs
    wget              # Command-line utility to download files from the web
    traceroute        # Traces the route packets take to a network host
    nmap              # Network mapper for security auditing and network discovery
    dnsutils          # DNS lookup utilities (e.g., dig, nslookup)

    # Version control
    git               # Version control system for managing code repositories

    # Terminal utilities
    tmux              # Terminal multiplexer for managing multiple terminal sessions
    vim               # Popular text editor for editing code and config files
    nano              # Lightweight terminal text editor
    htop              # Interactive process viewer, an enhanced version of `top`
    tree              # Display directory structures in a tree-like format

    # Archiving and compression
    zip               # Utility for creating zip archives
    unzip             # Utility for extracting files from zip archives
    tar               # Archive utility for .tar files
    p7zip-full        # Full version of 7zip, a high compression utility

    # Text processing
    sed               # Stream editor for processing and transforming text
    awk               # Text pattern scanning and processing tool
    jq                # Lightweight tool for processing JSON files

    # System monitoring and troubleshooting
    sysstat           # Performance monitoring tools (e.g., sar, iostat)
    iotop             # Displays I/O usage by processes
    lsof              # Lists open files by processes
    strace            # Trace system calls and signals

    # Disk and filesystem management
    parted            # Disk partition management tool
    fdisk             # Partition table manipulator
    ncdu              # Disk usage analyzer with a ncurses interface

    # Security and cryptography
    gnupg             # GNU Privacy Guard for encryption and signing
    openssh-client    # SSH client for secure remote connections
    fail2ban          # Protects against brute-force attacks
    ufw               # Uncomplicated Firewall for managing iptables

    # Programming languages and runtimes
    python3           # Python programming language interpreter
    python3-pip       # Python package manager
    nodejs            # JavaScript runtime environment
    npm               # Node.js package manager

    # Miscellaneous utilities
    software-properties-common # Utility for managing apt repositories
    apt-transport-https        # HTTPS support for APT
    ca-certificates            # Manage CA certificates
    locales                    # Manage and configure locales
    bash-completion            # Command-line autocompletion for bash
    whois                      # Provides Whois command for domain info

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