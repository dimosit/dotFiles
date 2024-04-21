#!/bin/bash

#Install Starship 
sh -c "$(curl -fsSL https://starship.rs/install.sh)"


echo Installing ZSH 
apt install zsh -y

echo install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

echo Install navi 
bash <(curl -sL https://raw.githubusercontent.com/denisidoro/navi/master/scripts/install)


# Find all dot files then if the original file exists, create a backup
# Once backed up to {file}.dtbak symlink the new dotfile in place
for file in $(find . -maxdepth 2 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done

# Check if vim-addon installed, if not, install it automatically
if hash vim-addon  2>/dev/null; then
    echo "vim-addon (vim-scripts)  installed"
else
    echo "vim-addon (vim-scripts) not installed, installing"
    sudo apt update && sudo apt -y install vim-scripts
fi


sudo apt install tldr autojump htop bmon ranger git vim bat ncdu fzf tmux -y

echo "Installed"
