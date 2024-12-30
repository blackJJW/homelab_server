# Scripts Directory
This directory contains a collection of Bash scripts designed to automate and manage various tasks for my homelab server and system.

## 1. Purpose
The scripts in this directory are intended to:
- Automate repetitive administrative tasks.
- Streamline system setup, configuration, and maintenence.
- Provide tools for monitoring, security, and backups.

## 2. Directory Structure
```plaintext
/scripts
├── update_upgrade.sh      # Updates and upgrades the system packages
├── install_packages.sh    # Installs essential packages and tools
├── install_docker.sh      # Installs docker
└── README.md              # Documentation for the scripts directory
```

## 3. Installed Packages
This section provides a detailed list of the packages included in the system setup, categorized by their purpose.

### Development Tools
- **`build-essential`** : Essential tools for building software.
- **`cmake`** : Cross-plarform build system for compiling and building software.
- **`make`** : Build automation tool for compiling and linking programs.
- **`gdb`** : GNU Debugger for debugging C/C++ programs.

### Networking Tools
- **`net-tools`** : Tools for networking(ifconfig, netstat, etc.).
- **`curl`** : Command-line tool for transferring data with URLs.
- **`wget`** : Command-line utility to download files from the web.
- **`traceroute`** : Traces the route packets take to a network host.
- **`nmap`** : Network mapper for security auditing and network discovery.
- **`dnsutils`** : DNS lookup utilities

### Version Control
- **`git`** : Version control system for managing code repositories.

### Terminal Utilities
- **`tmux`** : Terminal multiplexer for managing multiple terminal sessions.
- **`vim`** : Text editor for editing code and config files.
- **`nano`** : Lightweight terminal text editor.
- **`tree`** : Display directory structures in a tree-like format.

### Archiving and Compression
- **`zip`**: Utility for creating zip archives.
- **`unzip`**: Utility for extracting files from zip archives.
- **`tar`**: Archive utility for `.tar` files.
- **`p7zip-full`**: Full version of 7zip, a high compression utility.


### Text Processing
- **`sed`**: Stream editor for processing and transforming text.
- **`awk`**: Text pattern scanning and processing tool.
- **`jq`**: Lightweight tool for processing JSON files.

### System Monitoring and Troubleshooting
- **`htop`** : Interactive process viewer, an enhanced version of top.
- **`sysstat`**: Performance monitoring tools.
- **`iotop`**: Displays I/O usage by processes.
- **`lsof`**: Lists open files by processes.
- **`strace`**: Trace system calls and signals.

### Disk and Filesystem Management
- **`parted`**: Disk partition management tool.
- **`fdisk`**: Partition table manipulator.
- **`ncdu`**: Disk usage analyzer with a ncurses interface.

### Security and Cryptography
- **`gnupg`**: GNU Privacy Guard for encryption and signing.
- **`openssh-client`**: SSH client for secure remote connections.
- **`fail2ban`**: Protects against brute-force attacks.
- **`ufw`**: Uncomplicated Firewall for managing iptables.

### Programming Languages and Runtimes
- **`python3`**: Python programming language interpreter.
- **`python3-pip`**: Python package manager.
- **`nodejs`**: JavaScript runtime environment.
- **`npm`**: Node.js package manager.

### Miscellaneous Utilities
- **`software-properties-common`**: Utility for managing apt repositories.
- **`apt-transport-https`**: HTTPS support for APT.
- **`ca-certificates`**: Manage CA certificates.
- **`locales`**: Manage and configure locales.
- **`bash-completion`**: Command-line autocompletion for bash.
- **`whois`**: Provides Whois command for domain info.
