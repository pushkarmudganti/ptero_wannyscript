#!/bin/bash

# Clear screen
clear

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# Main menu
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}           🚀 WANNY SCRIPT MANAGER${NC}"
echo -e "${RED}              MAKE BY WANNYDRAGON${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${RED} __  __    _    ___ _   _    __  __ _____ _   _ _   _${NC}"
echo -e "${RED}|  \/  |  / \  |_ _| \ | |  |  \/  | ____| \ | | | | |${NC}"
echo -e "${RED}| |\/| | / _ \  | ||  \| |  | |\/| |  _| |  \| | | | |${NC}"
echo -e "${RED}| |  | |/ ___ \ | || |\  |  | |  | | |___| |\  | |_| |${NC}"
echo -e "${RED}|_|  |_/_/   \_\___|_| \_|  |_|  |_|_____|_| \_|\___/${NC}"
echo ""
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${RED}  1) Panel Installation (0)${NC}"
echo -e "${RED}  2) Wings Installation (1)${NC}"
echo -e "${RED}  3) Both Installation (2)${NC}"
echo -e "${RED}  4) Install Cloudflared${NC}"
echo -e "${RED}  5) System Information${NC}"
echo -e "${RED}  0) Exit${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}📝 Select an option [0-5]:${NC} "

read -p " " choice

case $choice in
    1)
        echo -e "\n${RED}Starting Panel Installation (Option 0)...${NC}"
        echo "0" | bash <(curl -s https://pterodactyl-installer.se)
        ;;
    2)
        echo -e "\n${RED}Starting Wings Installation (Option 1)...${NC}"
        echo "1" | bash <(curl -s https://pterodactyl-installer.se)
        ;;
    3)
        echo -e "\n${RED}Starting Both Installation (Option 2)...${NC}"
        echo "2" | bash <(curl -s https://pterodactyl-installer.se)
        ;;
    4)
        echo -e "\n${RED}Installing Cloudflared...${NC}"
        # Add cloudflared installation
        sudo mkdir -p /usr/share/keyrings
        curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null
        echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared any main' | sudo tee /etc/apt/sources.list.d/cloudflared.list
        sudo apt-get update && sudo apt-get install cloudflared -y
        echo -e "${GREEN}Cloudflared installed!${NC}"
        ;;
    5)
        echo -e "\n${RED}System Information:${NC}"
        echo -e "${BLUE}OS:${NC} $(lsb_release -d | cut -f2)"
        echo -e "${BLUE}Kernel:${NC} $(uname -r)"
        echo -e "${BLUE}RAM:${NC} $(free -h | awk '/^Mem:/ {print $2}')"
        echo -e "${BLUE}Disk:${NC} $(df -h / | awk 'NR==2 {print $4 " free"}')"
        echo -e "${BLUE}IP:${NC} $(curl -s ifconfig.me)"
        ;;
    0)
        echo -e "\n${RED}Exiting...${NC}"
        exit 0
        ;;
    *)
        echo -e "\n${RED}Invalid option!${NC}"
        exit 1
        ;;
esac
