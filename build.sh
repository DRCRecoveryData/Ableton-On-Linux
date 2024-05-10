#!/bin/bash

# Define variables
dirname="Ableton_Live_11_Suite"
desktop="$(xdg-user-dir DESKTOP)"
download_dir="$HOME/wol/Downloads"
install_dir="$HOME/wol/$dirname"
wine_prefix="$install_dir"
ableton_installer_dir="$install_dir/drive_c/ableton11_installer"
ableton_zip_url="https://cdn-downloads.ableton.com/channels/11.3.25/ableton_live_suite_11.3.25_64.zip"
ableton_installer_exe="Ableton Live 11 Suite Installer.exe"
ableton_startup_script="startup.sh"
ableton_icon="icon.png"
ableton_desktop_file="ableton.desktop"
ableton_name_file="name.txt"

# Functions
prepare_environment() {
    echo "Preparing the folder..."
    mkdir -p "$install_dir"
}

install_dependencies() {
    echo "Installing all dependencies for Ableton Live 11 Suite and preparing all environments, Please wait..."
    WINEARCH=win64 WINEPREFIX="$wine_prefix" winetricks d3dx9 dotnet35 dotnet452 dxvk gdiplusvcrun2019 corefonts tahoma vcrun6sp6
    WINEARCH=win64 WINEPREFIX="$wine_prefix" winetricks win10
}

create_shortcut() {
    echo "Creating shortcut on your desktop, please don't open it until the installer finishes its work"
    cp "$download_dir/$dirname/$ableton_startup_script" "$install_dir"
    cp "$download_dir/$dirname/$ableton_icon" "$install_dir"
    cp "$download_dir/$dirname/$ableton_desktop_file" "$desktop"
}

download_ableton_installer() {
    echo "Downloading Ableton Live 11 Suite, this depends on your internet connection speed, Please wait..."
    wget "$ableton_zip_url" -O "$ableton_installer_dir/ableton.zip"
    mkdir -p "$ableton_installer_dir"
    echo "Unzipping Ableton Live 11 Suite..."
    unzip "$ableton_installer_dir/ableton.zip" -d "$ableton_installer_dir"
}

run_installer() {
    echo "The installer is ready to run"
    WINEARCH=win64 WINEPREFIX="$wine_prefix" wine "$ableton_installer_dir/$ableton_installer_exe"
}

post_installation_tasks() {
    echo "Ableton Live 11 Suite" >> "$install_dir/$ableton_name_file"
    echo "The installation is finished"
    read -rsn1 -p "The installation is finished, Press any key to exit"; echo
}

# Main script
prepare_environment
install_dependencies
create_shortcut
download_ableton_installer
run_installer
post_installation_tasks
exit
