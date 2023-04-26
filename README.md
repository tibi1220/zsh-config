# My current zsh configuration files

This repo contains my current zsh configuration files, as well as the iTerm2
themes I use.

## Installation

First, clone this repo into the `~/.config` folder.

```
git clone https://github.com/tibi1220/zsh-config ~/.config/zsh
```

Create a backup of your old `.zshenv` file, then make a link pointing to the
newly cloned file:

```
mv ~/.zshenv ~/.zshenv.bak
ln -s ~/.config/zsh/.zshenv ~/.zshenv
```

## Config file order

| Order | Name        | When              |
| ----- | ----------- | ----------------- |
| 1     | `.zshenv`   | always            |
| 2     | `.zprofile` | login shell       |
| 3     | `.zshrc`    | interactive shell |
| 4     | `.zlogin`   | login shell       |
| 5     | `.zlogout`  | login shell       |

## Thanks

Some functions are from
[Christian Chiarulli](https://github.com/ChristianChiarulli).

Some plugins are from
[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).
