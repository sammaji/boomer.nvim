#!/usr/bin/bash


install_neovim () {
    echo "#> Installing neovim..."
    if ! command -v curl &> /dev/null; then
        echo "curl not installed";
        exit 1;
    fi
    cd ~;
    curl -LO "https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz"
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux64.tar.gz
    echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' 1 >> ~/.bashrc
    echo "Installed neovim."
}

# install neovim
if ! command -v curl &> /dev/null; then
    read -p "nvim is not installed. Would you like to install nvim@0.9.5 (Y/n)" answer
    answer=${answer:-y}
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then 
        install_neovim;
    fi
fi


# check if curl is installed.
if ! command -v curl &> /dev/null; then
    echo "curl not installed";
    exit 1;
fi


# check if git is installed.
if ! command -v git &> /dev/null; then
    echo "git is not installed";
    exit 1;
fi


# install packer
packer_conf="~/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d "$packer_conf" ]; then 
    echo "#> Installing packer..."
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    if [ $? -eq 0 ]; then echo "Installed packer." 
    fi
fi


# install config"
conf="~/.config/nvim"
if [ -d "$conf" ]; then
    echo "Local config already exists."
    read -p "Do you want to overwrite your local config? (y/N)" yy
    yy={yy:-n}
    if [[ "$yy" != "y" || "$yy" != "Y" ]]; then exit 0 fi
fi

echo "#> Setting up neovim config..."
rm -rf ~/.config/nvim
git clone https://github.com/sammaji/boomer.nvim\
 ~/.config/nvim

if [ $? -ne 0 ]; then
    echo "Failed to create neovim config."
    exit 1
else
    echo "Created local neovim config at $HOME/.config/nvim"
fi
