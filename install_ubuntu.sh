echo "\033[1;32mInstalling i3 desktop environment...\033[0m"

sudo apt update && sudo apt install -y \
    acpi arandr arc-theme fonts-powerline dex dmenu dunst feh galculator \
    gvfs gvfs-backends i3 i3blocks i3lock i3status jq lightdm \
    lightdm-gtk-greeter mpv network-manager-gnome numlockx playerctl rofi \
    scrot sysstat thunar thunar-archive-plugin thunar-volman tumbler unzip \
    xarchiver xbindkeys xdg-user-dirs-gtk pluma xfce4-terminal xbacklight \
    x11-utils xss-lock zip papirus-icon-theme policykit-1-gnome

echo "\033[1;32mInstallation complete!\033[0m"

# Install i3lock-color

echo "\033[1;32mInstalling i3lock-color...\033[0m"

sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev libgif-dev

git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./install-i3lock-color.sh

cd ..
rm -rf i3lock-color

echo "\033[1;32mInstallation of i3lock-color complete!\033[0m"

# Install additional required packages
echo "\033[1;32mInstalling additional required packages...\033[0m"

sudo apt install -y \
    imagemagick \
    bc \
    x11-utils \
    x11-xserver-utils \
    feh

echo "\033[1;32mAdditional packages installation complete!\033[0m"


# Install Betterlockscreen

echo "\033[1;32mInstalling Betterlockscreen...\033[0m"

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

echo "\033[1;32mBetterlockscreen installation complete!\033[0m"

# Install libinput-gestures

echo "\033[1;32mInstalling libinput-gestures...\033[0m"

sudo apt-get install libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo ./libinput-gestures-setup install

echo "\033[1;32mlibinput-gestures installation complete!\033[0m"
