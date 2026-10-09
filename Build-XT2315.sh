#!/bin/bash

APP_NAME="TWRP 12.1 - XT2315" 

# Function To Set Startup Screen Placement
startup_screen_size() {
    # Function to check if a command exists
    command_exists() {
        command -v "$1" >/dev/null 2>&1
    }

    # Check for required packages and prompt to install if missing
    MISSING=()
    for cmd in xdotool wmctrl; do
        if ! command_exists "$cmd"; then
            MISSING+=("$cmd")
        fi
    done

    if [ ${#MISSING[@]} -gt 0 ]; then
        echo "The following required packages are missing: ${MISSING[*]}"
        read -p "Would you like to install them? (y/n) " -r
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            if command_exists apt; then
                sudo apt install -y "${MISSING[@]}"
            elif command_exists pacman; then
                sudo pacman -S --noconfirm "${MISSING[@]}"
            elif command_exists dnf; then
                sudo dnf install -y "${MISSING[@]}"
            elif command_exists zypper; then
                sudo zypper install -y "${MISSING[@]}"
            else
                echo "Package manager not detected. Please install ${MISSING[*]} manually."
                return 1
            fi
        else
            echo "Dependencies not installed. Exiting..."
            return 1
        fi
    fi

    # Wait for a moment to ensure the window is ready
    sleep 0.5

    # Get the active window ID
    WIN_ID=$(xdotool getactivewindow)

    if [ -z "$WIN_ID" ]; then
        echo "Failed to get active window ID."
        return 1
    fi

    # Get screen dimensions
    SCREEN_WIDTH=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f1)
    SCREEN_HEIGHT=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f2)

    if [ -z "$SCREEN_WIDTH" ] || [ -z "$SCREEN_HEIGHT" ]; then
        echo "Failed to get screen dimensions."
        return 1
    fi

    # Calculate half-width
    HALF_WIDTH=$((SCREEN_WIDTH / 2))

    # Apply the window positioning multiple times to ensure it sticks
    for i in {1..3}; do
        wmctrl -i -r "$WIN_ID" -e 0,0,0,"$HALF_WIDTH","$SCREEN_HEIGHT"
        sleep 0.2
    done
}

startup_screen_size

# Print Rom Name To Terminal
echo -ne "\033]0;$APP_NAME\007"

## TWRP
#############################
export USE_CCACHE=1
. build/envsetup.sh
lunch twrp_genevn-eng
m clean
echo ""
mka adbd recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mkdir ~/Desktop/Release_Test >/dev/null 2>&1
mkdir ~/Desktop/Release_Test/Genevn >/dev/null 2>&1
mv $OUT/recovery.img ~/Desktop/Release_Test/Genevn/TWRP_12.1-Stylus_5G_2023-XT2315.img
m clean
read
#############################
#############################

