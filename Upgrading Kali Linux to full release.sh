#!/bin/bash

# Update and upgrade the current system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Upgrade from minimal to full release
echo "Upgrading Kali Linux to full release..."
sudo apt install -y kali-linux-large

# Install all required hacking tools
echo "Installing all required hacking tools..."
sudo apt install -y kali-tools-top10 kali-tools-all

# Install OpenJDK (required for the Android spy server)
echo "Installing OpenJDK..."
sudo apt install -y openjdk-11-jdk

# Download and setup the Android spy server with GUI (example: AhMyth)
echo "Setting up the Android spy server with GUI..."
mkdir -p ~/tools && cd ~/tools
git clone https://github.com/AhMyth/AhMyth-Android-RAT.git
cd AhMyth-Android-RAT/AhMyth-Server
npm install
npm start

echo "Setup complete. Kali Linux is now upgraded to full release, hacking tools are installed, and the Android spy server is set up."
