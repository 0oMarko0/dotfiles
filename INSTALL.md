# Default config for sway

# Sway
Follow the official instruction on the [arch forum](https://wiki.archlinux.org/title/Sway). You'll need some utils
- alacritty for the terminal
- wofi for app launcher
- grim + slurp for screenshots
- wl-clipboard for clipboard utilities
- xorg-xwayland to support xorg app
- swaybg to set a background
- swayidle to idle 
- swaylock to lock

To properly start sway with nvidia you will need to following script

```
#!/bin/bash

export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1
exec sway --unsupported-gpu
```

# zsh
Install antidote, the [plugin manager](https://antidote.sh/install)
```
sudo pacman -S fzf
yay -S zsh-antidote
```

# tmux
You'll need a plugin manager, follow the official installation for [TPM tmux plugin manager](https://github.com/tmux-plugins/tpm)


# nvim
To make vim style navigation work with tmux you'll need the `christoomey/vim-tmux-navigator`

# Font
Use a [nerdfont](https://www.nerdfonts.com/font-downloads) which is easily discoverable with pacman + fzf
```
pacman -Ss nerd-fonts | fzf
```

Interesting font:
- IBM Plex Mono 
- Jetbrain Mono

# Themes
### [cyberdream](https://github.com/scottmckendry/cyberdream.nvim)
High-contrast, Futuristic & Vibrant Neovim Colorscheme. Also support other tool like alacritty.
It has a transparency-first deisgn principle, meaning that all decision are made with transparency in mind

### [oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim)
A dark and light Neovim theme written in fennel, inspired by IBM Carbon. Need more work for other tool
since there's not default
 
# Idea
- [eza](https://github.com/eza-community/eza/tree/main) is a new ls with more feature
- [waybar](https://github.com/alexays/waybar) to replace swaybar
- [btop](https://github.com/aristocratos/btop) interesting alternative to htop
- [tmux catppuccin](https://github.com/catppuccin/tmux/discussions/317)