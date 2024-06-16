export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="zhihaopan"

plugins=(
    git
    docker
    zsh-autosuggestions
    autojump
    zsh-syntax-highlighting
    golang
    rust
)

source $ZSH/oh-my-zsh.sh

source ~/.profile_comm
alias ls="eza --color=always --long --git --icons=always"
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/usr/local/lib64:/usr/lib64
export PATH=$HOME/.local/node/bin:$HOME/.local/python/bin:$HOME/.local/bin:$HOME/.go/bin:/usr/local/go/bin/:$HOME/.cargo/bin:$HOME/.local/tools_bin/patchbuild:$HOME/.local/node/bin:$PATH:$HOME/.ft
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export RUNEWIDTH_EASTASIAN=0

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always --icons=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview' --height=80%  --border=bold"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always --icons=always {} | head -200' --height=80%  --border=bold"

alias f='files_list=$(fzf -m --layout reverse --height=80%  --border=bold --preview "bat --style=numbers --color=always --line-range :500 {}") && if command -v floaterm &> /dev/null;then floaterm $files_list;else nvim $files_list;fi'

alias tcc="patchbuild build -m64 --env-name=mmsearch_pb3.5 --include-commit  --profile=debug --gcc-version=gcc7 --skip-ipath"
alias tmake="patchbuild build -m64 --env-name=mmsearch_pb3.5 --download-genfiles --compile-command-query='--merge' --include-commit  --gcc-version=gcc7"
alias dcc="patchbuild docker -m64 --env-name=mmsearch_pb3.5 --gcc-version=gcc7"
alias s='cat ~/.notes.txt | grep -i'
alias a='vim ~/.notes.txt +9999'

fmt_date() { date '+%Y-%m-%d %H:%M:%S' -d @"$@" }
fmt_stamp() { date  +%s --utc -d "$*" }

vim(){ if command -v floaterm &> /dev/null;then floaterm $@;else nvim $@; fi }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -z "$TMUX"  ] && [ -z "$DISTROBOX_ENTER_PATH" ] && ! [ -z "$SSH_TTY" ] && { tmux attach || exec tmux new-session && exit; }

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

alias cat='bat -pp'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
source $HOME/.local/fzf-git.sh/fzf-git.sh
