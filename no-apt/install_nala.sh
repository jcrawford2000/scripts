echo "Stop using apt, use nala instead"
echo "This script will install nala and alias it to apt"
sudo apt update && sudo apt install nala
echo "Creaiting alias for apt"
echo "alias apt='sudo nala'" >> ~/.bashrc
echo "alias nala='sudo nala'" >> ~/.bashrc
source ~/.bashrc
