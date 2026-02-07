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
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}           🚀 WANNY SCRIPT MANAGER${NC}"
echo -e "${PURPLE}              MAKE BY WANNYDRAGON${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${BLUE} __  __    _    ___ _   _    __  __ _____ _   _ _   _${NC}"
echo -e "${BLUE}|  \/  |  / \  |_ _| \ | |  |  \/  | ____| \ | | | | |${NC}"
echo -e "${BLUE}| |\/| | / _ \  | ||  \| |  | |\/| |  _| |  \| | | | |${NC}"
echo -e "${BLUE}| |  | |/ ___ \ | || |\  |  | |  | | |___| |\  | |_| |${NC}"
echo -e "${BLUE}|_|  |_/_/   \_\___|_| \_|  |_|  |_|_____|_| \_|\___/${NC}"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  1) Panel Installation${NC}"
echo -e "${GREEN}  2) Wings Installation${NC}"
echo -e "${GREEN}  3) Uninstall Tools${NC}"
echo -e "${GREEN}  4) Blueprint+Theme+Extensions${NC}"
echo -e "${GREEN}  5) Cloudflare Setup${NC}"
echo -e "${GREEN}  6) System Information${NC}"
echo -e "${GREEN}  7) Tailscale (install + up)${NC}"
echo -e "${GREEN}  8) Database Setup${NC}"
echo -e "${RED}  0) Exit${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}📝 Select an option [0-8]:${NC} "

read -p " " choice

case $choice in
    1)
        echo -e "\n${GREEN}Starting Panel Installation...${NC}"
        bash <(curl -s https://pterodactyl-installer.se)
        ;;
    2)
        echo -e "\n${GREEN}Starting Wings Installation...${NC}"
        # Add wings installation command here
        ;;
    3)
        echo -e "\n${GREEN}Starting Uninstall Tools...${NC}"
        # Add uninstall tools command here
        ;;
    4)
        echo -e "\n${GREEN}Starting Blueprint+Theme+Extensions...${NC}"
        # Add blueprint/theme command here
        ;;
    5)
        echo -e "\n${GREEN}Starting Cloudflare Setup...${NC}"
        # Add Cloudflare setup command here
        ;;
    6)
        echo -e "\n${GREEN}Showing System Information...${NC}"
        # Add system info command here
        ;;
    7)
        echo -e "\n${GREEN}Starting Tailscale Installation...${NC}"
        # Add Tailscale command here
        ;;
    8)
        echo -e "\n${GREEN}Starting Database Setup...${NC}"
        # Add database setup command here
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
