#!/bin/bash

# Add Kali Linux repositories
echo "Adding Kali Linux repositories..."
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list

# Update package list
echo "Updating package list..."
sudo apt update

# Install Kali Linux keyring
echo "Updating Kali Linux keyring..."
sudo apt install -y kali-archive-keyring

# Upgrade the system (optional)
echo "Upgrading the system..."
sudo apt upgrade -y

echo "Kali Linux repositories added and keyring updated successfully."
