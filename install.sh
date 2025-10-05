# Check if the Neovim config directory exists
if [ -d ~/.config/nvim ]; then
    # Backup the existing Neovim config directory
    mv ~/.config/nvim ~/.config/nvim.bak
fi


ln -s $(pwd) ~/.config/nvim