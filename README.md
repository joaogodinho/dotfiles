# jcfg dotfiles

## Requirements

- `zsh`
- `tmux`
- `fasd`: https://github.com/clvv/fasd
- Prezto: https://github.com/sorin-ionescu/prezto
- base16: https://github.com/chriskempson/base16

## Prezto

### Modules

```
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'tmux' \
  'git' \
  'fasd'
```

### Configurations

Append to `.zpreztorc`

```
zstyle ':prezto:module:editor' key-bindings 'vi'
zstyle ':prezto:module:prompt' pwd-length 'long'
zstyle ':prezto:module:tmux:auto-start' local 'yes'
```

Change in `.zprofile`

```
export EDITOR='vim'
export VISUAL='vim'
```

## Fasd configurations

Append to `.zshrc`

```
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
```

## Alacritty configurations

Using `base16-ocean-256.yml`
