# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Powerlevel10k instant prompt — must stay near the top of .zshrc.
# Initializes the prompt from a cache before the rest of .zshrc runs.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Speed up startup: skip omz's completion-dir security audit (saves ~50ms;
# safe on a single-user machine where you control $fpath).
ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
# Put default node on PATH so `node` works without sourcing nvm
export PATH="$NVM_DIR/versions/node/v22.12.0/bin:$PATH"
# Lazy-load nvm: only source nvm.sh when nvm/npm/npx/pnpm/yarn is actually called
_nvm_lazy_load() {
	unset -f nvm node npm npx pnpm yarn 2>/dev/null
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
nvm()   { _nvm_lazy_load; nvm   "$@"; }
npm()   { _nvm_lazy_load; npm   "$@"; }
npx()   { _nvm_lazy_load; npx   "$@"; }
yarn()  { _nvm_lazy_load; yarn  "$@"; }
export PATH=$PATH:/Applications/Docker.app/Contents/Resources/bin

# # Docker path configuration
# export PATH=$PATH:/Applications/Docker.app/Contents/Resources/bin
# export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
# export PATH=$PATH:$DOCKER_CONFIG/cli-plugins

# Fix Docker daemon connection issue on macOS
# Unset DOCKER_HOST to let Docker Desktop use its default context
# Docker Desktop automatically manages the socket, so DOCKER_HOST shouldn't be set
unset DOCKER_HOST 2>/dev/null || true


# Added by pip-symlink script on Fri Sep 26 18:10:48 +03 2025
export PATH="/Users/umitcanevleksiz/.local/bin:$PATH"
# >>> conda initialize (lazy) >>>
# Original block backed up in ~/.zshrc.bak.*. Lazy-load to avoid 350ms startup cost.
export PATH="/Users/umitcanevleksiz/miniconda3/condabin:$PATH"
conda() {
	unset -f conda
	__conda_setup="$('/Users/umitcanevleksiz/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
		eval "$__conda_setup"
	else
		if [ -f "/Users/umitcanevleksiz/miniconda3/etc/profile.d/conda.sh" ]; then
			. "/Users/umitcanevleksiz/miniconda3/etc/profile.d/conda.sh"
		else
			export PATH="/Users/umitcanevleksiz/miniconda3/bin:$PATH"
		fi
	fi
	unset __conda_setup
	conda "$@"
}
# <<< conda initialize (lazy) <<<


# >>> mamba initialize (lazy) >>>
export MAMBA_EXE='/Users/umitcanevleksiz/miniconda3/bin/mamba'
export MAMBA_ROOT_PREFIX='/Users/umitcanevleksiz/.local/share/mamba'
mamba() {
	unset -f mamba
	__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
	if [ $? -eq 0 ]; then
		eval "$__mamba_setup"
	else
		alias mamba="$MAMBA_EXE"
	fi
	unset __mamba_setup
	mamba "$@"
}
# <<< mamba initialize (lazy) <<<

# pnpm
export PNPM_HOME="/Users/umitcanevleksiz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by Antigravity
export PATH="/Users/umitcanevleksiz/.antigravity/antigravity/bin:$PATH"

# Dotnet
export PATH="$PATH:/usr/local/share/dotnet/dotnet"

# Powerlevel10k user config (run `p10k configure` to create/edit ~/.p10k.zsh)
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
# Directory shortcuts (cd <name> from anywhere)
setopt cdable_vars
export mv="/Users/umitcanevleksiz/Documents/Programming/Unity/GoodjobGames/spooky-match"

# Source custom zsh functions (rgp, etc.)
[ -d "$HOME/.zsh_custom" ] && for file in $HOME/.zsh_custom/*.zsh; do source "$file"; done
