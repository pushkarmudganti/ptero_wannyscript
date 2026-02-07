#!/bin/bash

set -e

#######################################################################################
#                                                                                     #
#   ██╗    ██╗ █████╗ ███╗   ██╗███╗   ██╗██╗   ██╗██████╗  ██████╗  █████╗ ██████╗   #
#   ██║    ██║██╔══██╗████╗  ██║████╗  ██║╚██╗ ██╔╝██╔══██╗██╔════╝ ██╔══██╗██╔══██╗  #
#   ██║ █╗ ██║███████║██╔██╗ ██║██╔██╗ ██║ ╚████╔╝ ██║  ██║██║  ███╗███████║██████╔╝  #
#   ██║███╗██║██╔══██║██║╚██╗██║██║╚██╗██║  ╚██╔╝  ██║  ██║██║   ██║██╔══██║██╔══██╗  #
#   ╚███╔███╔╝██║  ██║██║ ╚████║██║ ╚████║   ██║   ██████╔╝╚██████╔╝██║  ██║██║  ██║  #
#    ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝   ╚═╝   ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝  #
#                                                                                     #
#   ██████╗ ██████╗  █████╗  ██████╗ ███╗   ██╗                                      #
#   ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ████╗  ██║                                      #
#   ██║  ██║██████╔╝███████║██║  ███╗██╔██╗ ██║                                      #
#   ██║  ██║██╔══██╗██╔══██║██║   ██║██║╚██╗██║                                      #
#   ██████╔╝██║  ██║██║  ██║╚██████╔╝██║ ╚████║                                      #
#   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝                                      #
#                                                                                     #
#                        P R E M I U M   E D I T I O N                                #
#                                                                                     #
#######################################################################################
#                                                                                     #
# Project: 'WannyDragon Pterodactyl Installer - Premium Edition'                      #
#                                                                                     #
# Copyright (C) 2024, Wanny_Dragon                                                    #
# Original Copyright (C) 2018-2026, Vilhelm Prytz                                     #
#                                                                                     #
#   This program is free software: you can redistribute it and/or modify              #
#   it under the terms of the GNU General Public License as published by              #
#   the Free Software Foundation, either version 3 of the License, or                 #
#   (at your option) any later version.                                               #
#                                                                                     #
#   This program is distributed in the hope that it will be useful,                   #
#   but WITHOUT ANY WARRANTY; without even the implied warranty of                    #
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                     #
#   GNU General Public License for more details.                                      #
#                                                                                     #
#   You should have received a copy of the GNU General Public License                 #
#   along with this program. If not, see <https://www.gnu.org/licenses/>.             #
#                                                                                     #
# This script is not associated with the official Pterodactyl Project.                #
# Unofficial Pterodactyl Panel Installation                                           #
# Credit: @Wanny_Dragon                                                               #
#                                                                                     #
#######################################################################################

# =============================================================================
# CONFIGURATION
# =============================================================================
export GITHUB_SOURCE="v2.0.0-premium"
export SCRIPT_RELEASE="v2.0.0"
export GITHUB_BASE_URL="https://raw.githubusercontent.com/pushkarmudganti/wanny-pterodactyl-installer"

LOG_PATH="/var/log/wannydragon-premium-installer.log"

# =============================================================================
# COLOR PALETTE - PREMIUM
# =============================================================================
# Primary Colors
PRI_BLACK="\033[0;30m"
PRI_RED="\033[0;31m"
PRI_GREEN="\033[0;32m"
PRI_YELLOW="\033[0;33m"
PRI_BLUE="\033[0;34m"
PRI_MAGENTA="\033[0;35m"
PRI_CYAN="\033[0;36m"
PRI_WHITE="\033[0;37m"

# Bright Colors
BRT_BLACK="\033[1;30m"
BRT_RED="\033[1;31m"
BRT_GREEN="\033[1;32m"
BRT_YELLOW="\033[1;33m"
BRT_BLUE="\033[1;34m"
BRT_MAGENTA="\033[1;35m"
BRT_CYAN="\033[1;36m"
BRT_WHITE="\033[1;37m"

# Background Colors
BG_BLACK="\033[40m"
BG_RED="\033[41m"
BG_GREEN="\033[42m"
BG_YELLOW="\033[43m"
BG_BLUE="\033[44m"
BG_MAGENTA="\033[45m"
BG_CYAN="\033[46m"
BG_WHITE="\033[47m"

# Special Effects
BOLD="\033[1m"
DIM="\033[2m"
ITALIC="\033[3m"
UNDERLINE="\033[4m"
BLINK="\033[5m"
REVERSE="\033[7m"
HIDDEN="\033[8m"
RESET="\033[0m"

# Gradient Colors
GRADIENT_1="\033[38;5;201m"
GRADIENT_2="\033[38;5;165m"
GRADIENT_3="\033[38;5;129m"
GRADIENT_4="\033[38;5;93m"
GRADIENT_5="\033[38;5;57m"

# Custom Brand Colors
DRAGON_PURPLE="\033[38;5;141m"
DRAGON_BLUE="\033[38;5;45m"
DRAGON_GREEN="\033[38;5;84m"
DRAGON_GOLD="\033[38;5;220m"
DRAGON_RED="\033[38;5;203m"

# =============================================================================
# EMOJI SET - PREMIUM
# =============================================================================
EM_DRAGON="🐉"
EM_PANEL="📊"
EM_WINGS="🪽"
EM_ROCKET="🚀"
EM_WRENCH="🛠️"
EM_SKULL="💀"
EM_STAR="⭐"
EM_FIRE="🔥"
EM_COMP="💻"
EM_SERVER="🖥️"
EM_CHECK="✅"
EM_WARN="⚠️"
EM_ERROR="❌"
EM_INFO="ℹ️"
EM_QUEST="❓"
EM_GAME="🎮"
EM_ZAP="⚡"
EM_TOOLS="🔧"
EM_LOCK="🔒"
EM_BOX="📦"
EM_MOON="🌙"
EM_GEM="💎"
EM_TROPHY="🏆"
EM_SYNC="🔄"
EM_STOP="🚫"
EM_TARGET="🎯"
EM_GEAR="⚙️"
EM_KEY="🗝️"
EM_GLOBE="🌐"
EM_CHART="📈"
EM_SHIELD="🛡️"
EM_SPARK="✨"
EM_PALETTE="🎨"
EM_CRYSTAL="🔮"
EM_CASTLE="🏰"
EM_CROWN="👑"
EM_DIAMOND="💎"
EM_THUNDER="🌩️"
EM_SATELLITE="🛰️"
EM_ALIEN="👾"
EM_DRAGON2="🐲"

# =============================================================================
# ANIMATION FUNCTIONS
# =============================================================================
print_wannydragon_banner() {
    clear
    echo -e "${DRAGON_PURPLE}"
    echo "   ██╗    ██╗ █████╗ ███╗   ██╗███╗   ██╗██╗   ██╗  "
    echo "   ██║    ██║██╔══██╗████╗  ██║████╗  ██║╚██╗ ██╔╝ "
    echo "   ██║ █╗ ██║███████║██╔██╗ ██║██╔██╗ ██║ ╚████╔╝  "
    echo "   ██║███╗██║██╔══██║██║╚██╗██║██║╚██╗██║  ╚██╔╝   "
    echo "   ╚███╔███╔╝██║  ██║██║ ╚████║██║ ╚████║   ██║     "
    echo "    ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝   ╚═╝     "
    echo -e "${DRAGON_BLUE}"
    echo "   ██████╗ ██████╗  █████╗  ██████╗ ███╗   ██╗                                      "
    echo "   ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ████╗  ██║                                      "
    echo "   ██║  ██║██████╔╝███████║██║  ███╗██╔██╗ ██║                                      "
    echo "   ██║  ██║██╔══██╗██╔══██║██║   ██║██║╚██╗██║                                      "
    echo "   ██████╔╝██║  ██║██║  ██║╚██████╔╝██║ ╚████║                                      "
    echo "   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝                                      "
    echo -e "${RESET}"
    echo -e "${DRAGON_GOLD}╔══════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${DRAGON_GOLD}║  ${EM_DRAGON} ${BOLD}${BRT_MAGENTA}P R E M I U M   P T E R O D A C T Y L   I N S T A L L E R ${EM_DRAGON}         ║${RESET}"
    echo -e "${DRAGON_GOLD}╚══════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""
}

print_main_menu_title() {
    echo -e "${DRAGON_PURPLE}"
    echo "  ███╗   ███╗ █████╗ ██╗███╗   ██╗     ███╗   ███╗███████╗███╗   ██╗██╗   ██╗"
    echo "  ████╗ ████║██╔══██╗██║████╗  ██║     ████╗ ████║██╔════╝████╗  ██║██║   ██║"
    echo "  ██╔████╔██║███████║██║██╔██╗ ██║     ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║"
    echo "  ██║╚██╔╝██║██╔══██║██║██║╚██╗██║     ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║"
    echo "  ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║     ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝"
    echo "  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝     ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ "
    echo -e "${RESET}"
}

print_credit_footer() {
    echo -e "${DIM}${PRI_BLACK}"
    echo "  ┌─────────────────────────────────────────────────────────────────────────┐"
    echo "  │${ITALIC}      Unofficial Pterodactyl Panel Installation Script${RESET}${DIM}${PRI_BLACK}             │"
    echo "  │${ITALIC}                  Credit: @Wanny_Dragon${RESET}${DIM}${PRI_BLACK}                           │"
    echo "  │${ITALIC}        Based on original work by Vilhelm Prytz${RESET}${DIM}${PRI_BLACK}                   │"
    echo "  └─────────────────────────────────────────────────────────────────────────┘"
    echo -e "${RESET}"
}

show_loading() {
    local frames=("${EM_SYNC}" "${EM_DRAGON}" "${EM_DRAGON2}" "${EM_FIRE}" "${EM_SPARK}")
    local pid=$1
    local msg=$2
    local delay=0.2
    
    echo -ne "${DRAGON_BLUE}"
    while kill -0 $pid 2>/dev/null; do
        for frame in "${frames[@]}"; do
            echo -ne "\r${frame} ${msg}..."
            sleep $delay
        done
    done
    echo -ne "\r${EM_CHECK} ${msg}... Done!${RESET}          \n"
}

typewriter_effect() {
    local text="$1"
    local color="$2"
    local delay="${3:-0.03}"
    
    echo -ne "${color}"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo -e "${RESET}"
}

# =============================================================================
# ENHANCED UI FUNCTIONS
# =============================================================================
print_section_title() {
    local title="$1"
    local emoji="$2"
    echo ""
    echo -e "${DRAGON_GOLD}╔══════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${DRAGON_GOLD}║  ${emoji} ${BOLD}${DRAGON_PURPLE}${title}${RESET}${DRAGON_GOLD}${RESET}"
    echo -e "${DRAGON_GOLD}╚══════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""
}

print_menu_option() {
    local num="$1"
    local emoji="$2"
    local title="$3"
    local desc="$4"
    local color="$5"
    
    echo -e "${color}  ┌── ${EM_STAR} Option ${num} ${EM_STAR} ──${RESET}"
    echo -e "${color}  │ ${emoji} ${BOLD}${title}${RESET}"
    echo -e "${color}  │ ${DIM}${desc}${RESET}"
    echo -e "${color}  └────────────────────────────────────────────────────────${RESET}"
    echo ""
}

print_status_box() {
    local type="$1"
    local message="$2"
    local color="$3"
    local emoji="$4"
    
    echo -e "${color}┌─────────────────────────────────────────────────────────────────────────┐${RESET}"
    echo -e "${color}│ ${emoji} ${BOLD}${message}${RESET}${color}${RESET}"
    echo -e "${color}└─────────────────────────────────────────────────────────────────────────┘${RESET}"
    echo ""
}

# Enhanced output functions
output() {
    echo -e "${DRAGON_BLUE}${EM_INFO} ${BOLD}${1}${RESET}"
}

error() {
    echo -e "${BRT_RED}${EM_ERROR} ${BOLD}ERROR:${RESET} ${1}" >&2
}

success() {
    echo -e "${BRT_GREEN}${EM_CHECK} ${BOLD}SUCCESS:${RESET} ${1}"
}

warning() {
    echo -e "${BRT_YELLOW}${EM_WARN} ${BOLD}WARNING:${RESET} ${1}"
}

# =============================================================================
# MAIN SCRIPT LOGIC
# =============================================================================
# Check for dependencies
check_dependencies() {
    if ! [ -x "$(command -v curl)" ]; then
        print_status_box "$BRT_RED" "Dependency Missing" "$BRT_RED" "$EM_ERROR"
        echo -e "${BRT_RED}${EM_ERROR} curl is required for this script to work!${RESET}"
        echo -e "${DRAGON_BLUE}${EM_INFO} Install using:${RESET}"
        echo -e "${DRAGON_GREEN}  • Debian/Ubuntu: ${BOLD}sudo apt install curl${RESET}"
        echo -e "${DRAGON_GREEN}  • CentOS/RHEL: ${BOLD}sudo yum install curl${RESET}"
        echo -e "${DRAGON_GREEN}  • Fedora: ${BOLD}sudo dnf install curl${RESET}"
        echo -e "${DRAGON_GREEN}  • Arch: ${BOLD}sudo pacman -S curl${RESET}"
        exit 1
    fi
    success "All dependencies satisfied!"
}

# Welcome screen
welcome() {
    print_wannydragon_banner
    
    echo -e "${DRAGON_BLUE}"
    typewriter_effect "Welcome to the Ultimate Pterodactyl Installation Experience!" "$DRAGON_PURPLE" 0.02
    echo -e "${RESET}"
    
    print_status_box "$DRAGON_GOLD" "Professional Gaming Panel Deployment System" "$DRAGON_GOLD" "$EM_CROWN"
    
    echo -e "${DRAGON_GREEN}${EM_INFO} Version: ${BOLD}${SCRIPT_RELEASE}${RESET}"
    echo -e "${DRAGON_GREEN}${EM_INFO} Repository: ${BOLD}https://github.com/WannyDragon${RESET}"
    echo -e "${DRAGON_GREEN}${EM_INFO} License: ${BOLD}GNU GPL v3${RESET}"
    echo ""
    
    echo -e "${BRT_YELLOW}${EM_WARN} System Requirements:${RESET}"
    echo -e "${DRAGON_BLUE}  • Root/Sudo privileges${RESET}"
    echo -e "${DRAGON_BLUE}  • Minimum 2GB RAM${RESET}"
    echo -e "${DRAGON_BLUE}  • Stable internet connection${RESET}"
    echo -e "${DRAGON_BLUE}  • Ubuntu 20.04+, Debian 10+, or CentOS 8+${RESET}"
    echo ""
}

# Execute installation
execute() {
    echo -e "\n\n* wannydragon-premium-installer $(date) \n\n" >>$LOG_PATH

    [[ "$1" == *"canary"* ]] && export GITHUB_SOURCE="master" && export SCRIPT_RELEASE="canary"
    
    print_status_box "$DRAGON_BLUE" "Downloading Components" "$DRAGON_BLUE" "$EM_SYNC"
    
    update_lib_source
    run_ui "${1//_canary/}" |& tee -a $LOG_PATH

    if [[ -n $2 ]]; then
        echo ""
        print_status_box "$DRAGON_GOLD" "Continue Installation?" "$DRAGON_GOLD" "$EM_QUEST"
        echo -e -n "${DRAGON_PURPLE}${EM_DRAGON} Installation of ${BOLD}$1${RESET} completed!"
        echo -e "\n${DRAGON_PURPLE}${EM_DRAGON} Proceed with ${BOLD}$2${RESET} installation? (${BRT_GREEN}Y${RESET}/${BRT_RED}N${RESET}): "
        read -r CONFIRM
        
        if [[ "$CONFIRM" =~ [Yy] ]]; then
            echo ""
            success "Continuing with $2 installation!"
            execute "$2"
        else
            warning "Installation sequence completed partially."
            print_status_box "$DRAGON_GREEN" "Operation Complete" "$DRAGON_GREEN" "$EM_CHECK"
            exit 0
        fi
    fi
}

# =============================================================================
# MAIN MENU
# =============================================================================
show_main_menu() {
    print_main_menu_title
    
    print_section_title "MAIN INSTALLATION OPTIONS" "$EM_ROCKET"
    
    # Stable Versions
    print_menu_option "1" "$EM_PANEL" "Install Control Panel" "Web interface for server management" "$DRAGON_GREEN"
    print_menu_option "2" "$EM_WINGS" "Install Wings Daemon" "Game server execution environment" "$DRAGON_BLUE"
    print_menu_option "3" "$EM_SERVER" "Complete Installation" "Panel + Wings on same machine" "$DRAGON_PURPLE"
    print_menu_option "4" "$EM_TOOLS" "Uninstall Tool" "Remove Panel or Wings from system" "$BRT_YELLOW"
    
    # Development Versions
    print_section_title "DEVELOPMENT/ADVANCED OPTIONS" "$EM_MOON"
    echo -e "${BRT_YELLOW}${EM_WARN} Warning: Canary versions are experimental!${RESET}"
    echo ""
    
    print_menu_option "5" "$EM_PANEL$EM_MOON" "Panel (Canary Version)" "Latest development build" "$BRT_YELLOW"
    print_menu_option "6" "$EM_WINGS$EM_MOON" "Wings (Canary Version)" "Latest development build" "$BRT_YELLOW"
    print_menu_option "7" "$EM_SERVER$EM_MOON" "Complete (Canary)" "Both components development" "$BRT_YELLOW"
    print_menu_option "8" "$EM_SKULL" "Uninstall (Canary)" "Remove development versions" "$BRT_RED"
    
    print_menu_option "0" "$EM_STOP" "Exit Installer" "Exit without changes" "$BRT_RED"
}

# =============================================================================
# SCRIPT EXECUTION
# =============================================================================
check_dependencies
welcome

# Download library
[ -f /tmp/lib.sh ] && rm -rf /tmp/lib.sh
print_status_box "$DRAGON_BLUE" "Downloading Installation Library" "$DRAGON_BLUE" "$EM_SYNC"
if curl -sSL -o /tmp/lib.sh "$GITHUB_BASE_URL"/master/lib/lib.sh; then
    success "Library downloaded successfully!"
else
    error "Failed to download library! Check internet connection."
    exit 1
fi

# Load library
# shellcheck source=lib/lib.sh
source /tmp/lib.sh

# Main interaction loop
while true; do
    show_main_menu
    print_credit_footer
    
    echo -e -n "${DRAGON_PURPLE}${EM_DRAGON} ${BOLD}Select option [0-8]: ${RESET}"
    read -r choice
    
    case $choice in
        0)
            echo ""
            print_status_box "$DRAGON_GREEN" "Thank You for Using WannyDragon Installer" "$DRAGON_GREEN" "$EM_DRAGON"
            break
            ;;
        1)
            print_section_title "INSTALLING CONTROL PANEL" "$EM_PANEL"
            execute "panel"
            ;;
        2)
            print_section_title "INSTALLING WINGS DAEMON" "$EM_WINGS"
            execute "wings"
            ;;
        3)
            print_section_title "COMPLETE INSTALLATION" "$EM_ROCKET"
            execute "panel" "wings"
            ;;
        4)
            print_section_title "UNINSTALL TOOL" "$EM_TOOLS"
            execute "uninstall"
            ;;
        5)
            print_section_title "INSTALLING PANEL (CANARY)" "$EM_MOON"
            warning "Using experimental development version!"
            execute "panel_canary"
            ;;
        6)
            print_section_title "INSTALLING WINGS (CANARY)" "$EM_MOON"
            warning "Using experimental development version!"
            execute "wings_canary"
            ;;
        7)
            print_section_title "INSTALLING COMPLETE (CANARY)" "$EM_MOON"
            warning "Using experimental development versions!"
            execute "panel_canary" "wings_canary"
            ;;
        8)
            print_section_title "UNINSTALL (CANARY)" "$EM_SKULL"
            warning "Using experimental uninstall scripts!"
            execute "uninstall_canary"
            ;;
        *)
            error "Invalid selection! Please choose 0-8."
            continue
            ;;
    esac
    
    echo ""
    print_status_box "$DRAGON_GOLD" "Operation Complete" "$DRAGON_GOLD" "$EM_CHECK"
    
    echo -e -n "${DRAGON_PURPLE}${EM_QUEST} Perform another operation? (${BRT_GREEN}Y${RESET}/${BRT_RED}N${RESET}): ${RESET}"
    read -r again
    [[ ! "$again" =~ [Yy] ]] && break
done

# Cleanup and exit
rm -rf /tmp/lib.sh

# Final farewell
echo ""
print_status_box "$DRAGON_PURPLE" "WannyDragon Premium Installer" "$DRAGON_PURPLE" "$EM_DRAGON"
echo -e "${DRAGON_GOLD}${EM_FIRE} Thank you for choosing WannyDragon! ${EM_FIRE}${RESET}"
echo -e "${DRAGON_BLUE}${EM_INFO} Website: ${BOLD}https://github.com/WannyDragon${RESET}"
echo -e "${DRAGON_BLUE}${EM_INFO} Support: ${BOLD}https://github.com/WannyDragon/issues${RESET}"
echo ""
