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


## Troubleshooting

### ERROR: Slashes are not permitted in package names

Command:

```sh
stow --target ~/.config/helix ~/src/dkruces/dotfiles/.config helix
```

Error message:

```plaintext
stow: ERROR: Slashes are not permitted in package names
```

Solution:

```sh
cd ~/src/dkruces/dotfiles/.config
stow --target ~/.config helix
```
