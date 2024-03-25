#!/bin/zsh

# make it executable everywhere
# sudo cp ~/hello.sh /usr/bin
# sudo chmod o+x /usr/bin/hello.sh
echo "Backup .zshrc" to dotfiles

ZSH_FILE="$HOME/.zshrc"
DESTINATION_DIR="$HOME/code/rafaover/dotfiles"
ZSH_DEST_FILE="$DESTINATION_DIR/zshrc_backup_$(date +%Y-%m-%d_%H-%M-%S)"

# Check if destination directory exists, if not, create it
if [ ! -d "$DESTINATION_DIR" ]; then
    mkdir -p "$DESTINATION_DIR"
fi

# Copy .zshrc to destination directory
cp "$ZSH_FILE" "$ZSH_DEST_FILE"

# Notify user about successful backup
echo "Backup of .zshrc created at: $ZSH_DEST_FILE"
