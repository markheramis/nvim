# Check if the Neovim config directory exists
if [ -d ~/.config/nvim ]; then
    # Backup the existing Neovim config directory
    mv ~/.config/nvim ~/.config/nvim.bak
fi

# Create a new Neovim config directory
mkdir ~/.config/nvim

# Create a symbolic link for init.lua in the Neovim config directory
ln -s $(pwd)/init.lua ~/.config/nvim/init.lua

# Create a symbolic link for the lua directory in the Neovim config directory
ln -s $(pwd)/lua ~/.config/nvim/lua