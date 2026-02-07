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

# Function to install Panel
install_panel() {
    echo -e "\n${RED}Starting Panel Installation...${NC}"
    
    # Create an expect script to handle interactive prompts
    cat > /tmp/install_panel.exp << 'EOF'
#!/usr/bin/expect -f
set timeout -1
spawn bash <(curl -s https://pterodactyl-installer.se)

# First question: Panel or Wings (0 for Panel)
expect "Select: "
send "0\r"

# Handle other questions with default answers
expect {
    "Continue? (y/N): " {
        send "y\r"
        exp_continue
    }
    "Is this the correct FQDN? (y/N): " {
        send "y\r"
        exp_continue
    }
    "Continue with Let's Encrypt? (y/N): " {
        send "y\r"
        exp_continue
    }
    "Enter an email address for Let's Encrypt:" {
        send "admin@example.com\r"
        exp_continue
    }
    "Database name (panel):" {
        send "\r"  # Press Enter for default
        exp_continue
    }
    "Database username (pterodactyl):" {
        send "\r"  # Press Enter for default
        exp_continue
    }
    "Database password:" {
        send "pterodactyl\r"  # Default password
        exp_continue
    }
    "Confirm password:" {
        send "pterodactyl\r"  # Confirm password
        exp_continue
    }
    "Select the desired timezone:" {
        send "\r"  # Press Enter for default
        exp_continue
    }
    "eof" {
        exit 0
    }
    timeout {
        send "\r"
        exp_continue
    }
}
EOF
    
    chmod +x /tmp/install_panel.exp
    /tmp/install_panel.exp
    rm -f /tmp/install_panel.exp
}

# Function to install Wings
install_wings() {
    echo -e "\n${RED}Starting Wings Installation...${NC}"
    
    # Create an expect script to handle interactive prompts
    cat > /tmp/install_wings.exp << 'EOF'
#!/usr/bin/expect -f
set timeout -1
spawn bash <(curl -s https://pterodactyl-installer.se)

# First question: Panel or Wings (1 for Wings)
expect "Select: "
send "1\r"

# Handle other questions with default answers
expect {
    "Continue? (y/N): " {
        send "y\r"
        exp_continue
    }
    "eof" {
        exit 0
    }
    timeout {
        send "\r"
        exp_continue
    }
}
EOF
    
    chmod +x /tmp/install_wings.exp
    /tmp/install_wings.exp
    rm -f /tmp/install_wings.exp
}

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
echo -e "${RED}  1) Panel Installation${NC}"
echo -e "${RED}  2) Wings Installation${NC}"
echo -e "${RED}  3) Uninstall Tools${NC}"
echo -e "${RED}  4) Blueprint+Theme+Extensions${NC}"
echo -e "${RED}  5) Cloudflare Setup${NC}"
echo -e "${RED}  6) System Information${NC}"
echo -e "${RED}  7) Tailscale (install + up)${NC}"
echo -e "${RED}  8) Database Setup${NC}"
echo -e "${RED}  0) Exit${NC}"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}📝 Select an option [0-8]:${NC} "

read -p " " choice

case $choice in
    1)
        install_panel
        ;;
    2)
        install_wings
        ;;
    3)
        echo -e "\n${RED}Starting Uninstall Tools...${NC}"
        # Add uninstall tools command here
        ;;
    4)
        echo -e "\n${RED}Starting Blueprint+Theme+Extensions...${NC}"
        # Add blueprint/theme command here
        ;;
    5)
        echo -e "\n${RED}Starting Cloudflare Setup...${NC}"
        # Add Cloudflare setup command here
        ;;
    6)
        echo -e "\n${RED}Showing System Information...${NC}"
        # Add system info command here
        ;;
    7)
        echo -e "\n${RED}Starting Tailscale Installation...${NC}"
        # Add Tailscale command here
        ;;
    8)
        echo -e "\n${RED}Starting Database Setup...${NC}"
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
