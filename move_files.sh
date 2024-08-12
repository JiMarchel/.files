#!/bin/bash

# Path tujuan untuk .tmux dan .tmux.conf
tmux_destination="$HOME"

# Path tujuan untuk nvim
nvim_destination="$HOME/.config"

# Memindahkan folder .tmux ke home directory
if [ -d ".tmux" ]; then
    mv ".tmux" "$tmux_destination/"
    echo ".tmux folder has been moved to $tmux_destination"
else
    echo ".tmux folder not found"
fi

# Memindahkan file .tmux.conf ke home directory
if [ -f ".tmux.conf" ]; then
    mv ".tmux.conf" "$tmux_destination/"
    echo ".tmux.conf has been moved to $tmux_destination"
else
    echo ".tmux.conf not found"
fi

# Memindahkan folder nvim ke .config directory
if [ -d "nvim" ]; then
    mkdir -p "$nvim_destination"
    mv "nvim" "$nvim_destination/"
    echo "nvim folder has been moved to $nvim_destination"
else
    echo "nvim folder not found"
fi

