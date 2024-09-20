# Dotfiles

Dotfiles.


## Configure the XDG Base Directory

```~/.profile
export XDG_CONFIG_HOME="$HOME/.config"
```


## Install Configuration Files with GNU Stow

Example Helix Editor:

```sh
mkdir --parent ~/.config/helix
```

```sh
stow \
  --target ~/.config/helix \
  --dir ~/dotfiles/.config \
  helix
```

Example Git SCM:

```sh
mkdir --parent ~/.config/git
```

```sh
stow \
  --target ~/.config/git \
  --dir ~/dotfiles/.config \
  git
```
