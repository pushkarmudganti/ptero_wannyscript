#!/bin/bash

# Clear screen
clear

# Professional Color Scheme - RED THEME
RED='\033[0;91m'
BRIGHT_RED='\033[1;91m'
DARK_RED='\033[0;31m'
RED_BG='\033[41m'
BLACK='\033[0;30m'
WHITE='\033[1;97m'
GRAY='\033[0;37m'
LIGHT_GRAY='\033[0;90m'
GOLD='\033[0;93m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
NC='\033[0m'
RESET='\033[0m'

# Modern ASCII Banner
echo -e "${RED_BG}${WHITE}${BOLD}"
echo "██████╗ ████████╗███████╗██████╗  ██████╗ ██████╗  █████╗  ██████╗████████╗██╗   ██╗██╗     "
echo "██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝╚██╗ ██╔╝██║     "
echo "██████╔╝   ██║   █████╗  ██████╔╝██║   ██║██║  ██║███████║██║        ██║    ╚████╔╝ ██║     "
echo "██╔═══╝    ██║   ██╔══╝  ██╔══██╗██║   ██║██║  ██║██╔══██║██║        ██║     ╚██╔╝  ██║     "
echo "██║        ██║   ███████╗██║  ██║╚██████╔╝██████╔╝██║  ██║╚██████╗   ██║      ██║   ███████╗"
echo "╚═╝        ╚═╝   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝   ╚═╝      ╚═╝   ╚══════╝"
echo -e "${NC}"

# Subtitle
echo -e "${RED}${BOLD}╔══════════════════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${RED}${BOLD}║                                                                                  ║${NC}"
echo -e "${RED}${BOLD}║${WHITE}${BOLD}                     🚀 PROFESSIONAL INSTALLATION SYSTEM 🚀                     ${RED}${BOLD}║${NC}"
echo -e "${RED}${BOLD}║${WHITE}${BOLD}                         Version 3.0.0 | Modern Edition                        ${RED}${BOLD}║${NC}"
echo -e "${RED}${BOLD}║                                                                                  ║${NC}"
echo -e "${RED}${BOLD}╚══════════════════════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# System Status Panel
echo -e "${DARK_RED}${BOLD}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NC}"
echo -e "${DARK_RED}${BOLD}┃${WHITE}${BOLD}                           SYSTEM DIAGNOSTICS PANEL                           ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}                                                                              ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}📊 OS:${NC} ${GRAY}$(lsb_release -d | cut -f2)${NC}                           ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}⚡ Kernel:${NC} ${GRAY}$(uname -r)${NC}                                        ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}⏱️  Uptime:${NC} ${GRAY}$(uptime -p | sed 's/up //')${NC}                           ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}💾 Memory:${NC} ${GRAY}$(free -h | awk '/^Mem:/ {print $3 "/" $2}')${NC}                 ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}💿 Disk:${NC} ${GRAY}$(df -h / | awk 'NR==2 {print $4 " free / " $2 " total"}')${NC}      ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}  ${WHITE}${BOLD}🌐 IP:${NC} ${GRAY}$(curl -s ifconfig.me)${NC}                                  ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┃${NC}                                                                              ${DARK_RED}${BOLD}┃${NC}"
echo -e "${DARK_RED}${BOLD}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"
echo ""

# Main Installation Menu
echo -e "${BRIGHT_RED}${BOLD}╔══════════════════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${WHITE}${BOLD}                         🎯 INSTALLATION OPTIONS 🎯                         ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}╠══════════════════════════════════════════════════════════════════════════════════╣${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED_BG}${WHITE}${BOLD}[ 1 ]${NC} ${WHITE}${BOLD}┃  INSTALL PTERODACTYL PANEL${NC}                                       ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Complete panel installation with database${NC}                           ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 2 ]${NC} ${WHITE}${BOLD}┃  INSTALL WINGS (DAEMON)${NC}                                           ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Game server daemon for Pterodactyl${NC}                                  ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 3 ]${NC} ${WHITE}${BOLD}┃  UPDATE PANEL${NC}                                                     ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Update existing Pterodactyl installation${NC}                             ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 4 ]${NC} ${WHITE}${BOLD}┃  MIGRATE DATABASE${NC}                                                 ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Run database migrations${NC}                                             ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 5 ]${NC} ${WHITE}${BOLD}┃  BACKUP PANEL${NC}                                                     ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Create backup of panel files and database${NC}                           ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 6 ]${NC} ${WHITE}${BOLD}┃  SECURITY HARDENING${NC}                                               ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Apply security configurations${NC}                                         ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 7 ]${NC} ${WHITE}${BOLD}┃  TROUBLESHOOT${NC}                                                     ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Diagnose and fix common issues${NC}                                        ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 8 ]${NC} ${WHITE}${BOLD}┃  UNINSTALL${NC}                                                        ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Remove Pterodactyl installation${NC}                                       ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}[ 9 ]${NC} ${WHITE}${BOLD}┃  EXIT${NC}                                                             ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}  ${RED}${BOLD}     ┃  ${GRAY}Exit installation script${NC}                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}║${NC}                                                                              ${BRIGHT_RED}${BOLD}║${NC}"
echo -e "${BRIGHT_RED}${BOLD}╚══════════════════════════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Footer
echo -e "${RED}${BOLD}┌────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${RED}${BOLD}│${WHITE}${BOLD}  ⚠️   IMPORTANT: Run as ${UNDERLINE}root${NC}${WHITE}${BOLD} or ${UNDERLINE}sudo${NC}${WHITE}${BOLD} user │ ${GOLD}${BOLD}📞 Support: docs.pterodactyl.io${NC}  ${RED}${BOLD}│${NC}"
echo -e "${RED}${BOLD}└────────────────────────────────────────────────────────────────────────────────┘${NC}"
echo ""

# Selection prompt
echo -e "${RED}${BOLD}▸${NC} ${WHITE}${BOLD}Select an option [1-9]:${NC} "
read -p "  " choice

case $choice in
    1)
        echo -e "\n${RED_BG}${WHITE}${BOLD} STARTING PTERODACTYL PANEL INSTALLATION ${NC}\n"
        echo -e "${RED}${BOLD}▸${NC} ${WHITE}Downloading and executing installer...${NC}\n"
        # Execute the installer
        bash <(curl -s https://pterodactyl-installer.se)
        ;;
    2)
        echo -e "\n${RED}${BOLD}Starting Wings installation...${NC}"
        # Add wings installation command here
        ;;
    3)
        echo -e "\n${RED}${BOLD}Starting Panel update...${NC}"
        # Add update command here
        ;;
    4)
        echo -e "\n${RED}${BOLD}Starting database migration...${NC}"
        # Add migration command here
        ;;
    5)
        echo -e "\n${RED}${BOLD}Starting backup process...${NC}"
        # Add backup command here
        ;;
    6)
        echo -e "\n${RED}${BOLD}Applying security hardening...${NC}"
        # Add security command here
        ;;
    7)
        echo -e "\n${RED}${BOLD}Starting troubleshooting...${NC}"
        # Add troubleshoot command here
        ;;
    8)
        echo -e "\n${RED}${BOLD}Starting uninstallation...${NC}"
        # Add uninstall command here
        ;;
    9)
        echo -e "\n${RED}${BOLD}Exiting...${NC}"
        exit 0
        ;;
    *)
        echo -e "\n${RED_BG}${WHITE}${BOLD} ERROR ${NC} ${RED}Invalid option! Please select 1-9${NC}"
        exit 1
        ;;
esac
