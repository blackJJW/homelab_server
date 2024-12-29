#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status

sudo apt-get update && \
sudo apt-get -y upgrade

sudo apt-get -y autoremove && \
sudo apt-get -y autoclean