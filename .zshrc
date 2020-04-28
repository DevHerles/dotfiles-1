#  ██████                           ██ ██   ██   ██      ██ ██    ██
# ░█░░░░██                         ░██░░   ░██  ░██     ░██░░    ░░
# ░█   ░██   ██████   ███████      ░██ ██ ██████░██     ░██ ██    ██  ██████
# ░██████   ░░░░░░██ ░░██░░░██  ██████░██░░░██░ ░██████████░██   ░██ ██░░░░██
# ░█░░░░ ██  ███████  ░██  ░██ ██░░░██░██  ░██  ░██░░░░░░██░██   ░██░██   ░██
# ░█    ░██ ██░░░░██  ░██  ░██░██  ░██░██  ░██  ░██     ░██░██ ██░██░██   ░██
# ░███████ ░░████████ ███  ░██░░██████░██  ░░██ ░██     ░██░██░░███ ░░██████
# ░░░░░░░   ░░░░░░░░ ░░░   ░░  ░░░░░░ ░░    ░░  ░░      ░░ ░░  ░░░   ░░░░░░
#
#                 ██
#                ░██
#  ██████  ██████░██      ██████  █████
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# -----------------------------------------------------------------ZGEN CONFIG
# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/aws
    zgen oh-my-zsh plugins/archlinux
    zgen oh-my-zsh plugins/django
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/kubectl
    zgen oh-my-zsh plugins/go
    zgen oh-my-zsh plugins/golang
    zgen oh-my-zsh plugins/gem
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/heroku
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/pep8
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/postgres
    zgen oh-my-zsh plugins/pass
    zgen oh-my-zsh plugins/ruby
    zgen oh-my-zsh plugins/rake
    zgen oh-my-zsh plugins/rbenv
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/command-not-found

    # completions
    zgen load zsh-users/zsh-completions src

    # autoupdate-zgen
    zgen load unixorn/autoupdate-zgen

    # forgit - interactive git commands
    zgen load wfxr/forgit

    # wakatime
    #zgen load sobolevn/wakatime-zsh-plugin

    # minimal themes
    zgen load subnixr/minimal

    # save all to init script
    zgen save
fi
# -------------------------------------------------------------END ZGEN CONFIG


# ---------------------------------------------------------------------MINIMAL
MNML_OK_COLOR=7                      # default: 7
MNML_ERR_COLOR=1                     # default: 1
MNML_USER_CHAR='$'                   # default: λ
MNML_INSERT_CHAR=''                  # default: ›
MNML_NORMAL_CHAR=''                  # default: ·


# Components on the left prompt
MNML_PROMPT=(mnml_ssh mnml_status mnml_keymap)

# Components on the right prompt
MNML_RPROMPT=('mnml_cwd 2 0' mnml_git)

# Components shown on info line
MNML_INFOLN=(mnml_err mnml_jobs mnml_uhp mnml_files)

# An additional array is used to configure magic enter's behavior:
MNML_MAGICENTER=(mnml_me_dirs mnml_me_ls mnml_me_git)
# -----------------------------------------------------------------END MINIMAL


# -------------------------------------------------------------------OH-MY-ZSH
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# ---------------------------------------------------------------END OH-MY-ZSH















# Import alias from .aliases
[ -f ~/.aliases ] && source ~/.aliases

# For handle Delete key
#bindkey    "[3~"          delete-char
#bindkey    "3;5~"         delete-char

# FZF FreeBSD color
export FZF_DEFAULT_OPTS='
--color=dark,fg:7,fg+:0,bg+:7,hl:7,hl+:9,info:7,prompt:7,spinner:7,pointer:7,marker:7'

# Keychain
eval $(keychain --eval --noask --quiet bandithijodotcom)

# Should to put at very bottom of this file config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export GPG_TTY=$(tty)
