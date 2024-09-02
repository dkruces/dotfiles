# Dotfiles

Dotfiles.


## Configure the XDG Base Directory

```~/.profile
export XDG_CONFIG_HOME="$HOME/.config"
```


## Install Configuration Files with GNU Stow

Example `helix-editor`:

```sh
stow \
  --target ~/.config/helix-editor \
  --dir ~/dotfiles/.config \
  helix-editor
```
