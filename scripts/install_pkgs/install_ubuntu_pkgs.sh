#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

log_message() {
    echo "[INFO] ${data}: $1"
}

install_package() {
    PACKAGE=$1
    if dpkg -l | grep -qw "$PACKAGE"; then
        log_message "$PACKAGE is already installed. Skipping..."
    else
        log_message "Installing $PACKAGE..."
        sudo apt-get install -y "$PACKAGE"
    fi
}

install_virtual_package() {
    PACKAGE=$1
    CANDIDATE=$2
    if dpkg -l | grep -qw "$CANDIDATE"; then
        log_message "$CANDIDATE is already installed. Skipping."
    else
        log_message "Installing $CANDIDATE for virtual package $PACKAGE..."
        sudo apt-get install -y "$CANDIDATE"
    fi
}

# Update and upgrade the system
log_message "Updating package lists and upgrading system..."
sudo apt-get update && sudo apt-get upgrade -y

# Development tools
log_message "Installing development tools..."
install_package build-essential
install_package cmake
install_package make
install_package gdb

# Networking tools
log_message "Installing networking tools..."
install_package net-tools
install_package curl
install_package wget
install_package traceroute
install_package nmap
install_package dnsutils

# Version control
log_message "Installing version control tools..."
install_package git

# Terminal utilities
log_message "Installing terminal utilities..."
install_package tmux
install_package vim
install_package nano
install_package htop
install_package tree

# Archiving and compression
log_message "Installing archiving and compression tools..."
install_package zip
install_package unzip
install_package tar
install_package p7zip-full
install_package 7zip

# Text processing
log_message "Installing text processing tools..."
install_virtual_package awk gawk
install_package sed
install_package jq

# System monitoring and troubleshooting
log_message "Installing system monitoring and troubleshooting tools..."
install_package sysstat
install_package iotop
install_package lsof
install_package strace

# Disk and filesystem management
log_message "Installing disk and filesystem management tools..."
install_package parted
install_package fdisk
install_package ncdu

# Security and cryptography
log_message "Installing security and cryptography tools..."
install_package gnupg
install_package openssh-client
install_package fail2ban
install_package ufw

# Programming languages and runtimes
log_message "Installing programming languages and runtimes..."
install_package python3
install_package python3-pip
install_package openjdk-11-jdk
install_package nodejs
install_package npm

# Miscellaneous utilities
log_message "Installing miscellaneous utilities..."
install_package software-properties-common
install_package apt-transport-https
install_package ca-certificates
install_package locales
install_package bash-completion
install_package whois

# Final message
log_message "All packages installed successfully!"