#!/bin/bash
echo "This script will install docker on a Ubuntu/Debian based system"
echo "1. Updating apt cache"
sudo apt update
echo "2. Installing required packages: apt-transport-https, curl"
sudo apt install apt-transport-https curl
echo "3. Installing Docker's GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "4. Set up Docker's stable repository"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "5. Update apt cache to pull in Docker repo"
sudo apt update
echo "6. Install Docker"
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "7. Enable Docker use without sudo for current user"
sudo usermod -aG docker ${USER}
echo "Log out and back in to use Docker without sudo"
