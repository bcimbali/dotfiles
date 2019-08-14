# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# To use RubyGem Colorls - not sure this is needed
# source $(dirname $(gem which colorls))/tab_complete.sh

# Path to your oh-my-zsh installation.
export ZSH="/Users/BrettCimbalik/.oh-my-zsh"

# Path for MySQL@5.7 to work
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Export to get node to not give 'unset prefix error'
export NVM_DIR="$HOME/.nvm"
unset PREFIX # Add this line
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Env variables for Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Font for Powerlevel9k theme, from Nerd-Fonts
POWERLEVEL9K_MODE='nerdfont-complete'

# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="red"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="214"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

##################################### ICONS #####################################
# Change the separator icon
# https://github.com/ryanoasis/powerline-extra-symbols
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c6'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0c7'

# Change the icon for Node JS
POWERLEVEL9K_NODE_ICON='\uf898'

#Change home icon
POWERLEVEL9K_HOME_ICON='\uf7db'

# Change time icon to nothing
POWERLEVEL9K_TIME_ICON=""

# Change Git icons
POWERLEVEL9K_VCS_UNSTAGED_ICON='\uf769'
POWERLEVEL9K_VCS_STAGED_ICON='\uf001'
# POWERLEVEL9K_VCS_UNTRACKED_ICON='Fox'
# POWERLEVEL9K_VCS_TRACKED_ICON='Fox'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uf42f '
# POWERLEVEL9K_VCS_COMMIT_ICON="Zorro"

##################################### COLORS #####################################
# Change Home colors
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"

# Colors for Git Statuses
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='197'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='082'

# Change date/time colors
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="yellow"

# Change IP colors
POWERLEVEL9K_IP_BACKGROUND="056"
POWERLEVEL9K_IP_FOREGROUND="011"

# Change status colors
POWERLEVEL9K_STATUS_OK_BACKGROUND="022"

# Change node version colors
POWERLEVEL9K_NODE_VERSION_FOREGROUND='022'

# Output time, date, and a symbol from the "Awesome Powerline Font" set
POWERLEVEL9K_TIME_FORMAT="%D{\ufd41 %m/%d/%y}"

# Customize left and right prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm node_version ip)

# Shorten directory names in displayed path
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# Powerlevel use command prompt line below segments, set to true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Adds one line space between prompts
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Remove the username@computer in the prompt
DEFAULT_USER=$USER


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Include Z
. ~/z.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git extract colored-man-pages node npm nvm brew zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Make tree into a function and limit its output
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

##################################### ALIASES #####################################
# ##### Example aliases #########
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Open zshrc config
alias zshconfig="code ~/.zshrc"
# Check the weather, based on IP address - using wttr.in
alias weather='curl wttr.in/'
# Make us of colorls Ruby Gem to display icons and colors for ls command - disabled on 4/22/2019
# re-enabled on 5/21/2019. Added -a and --sort-dir to list
alias ls="colorls -a --sort-dirs"
# Use youtube-dl to extract mp3 from youtube clip
alias getmp3="youtube-dl -x --audio-format mp3"
# Use youtube-dl to extract mp4 video
alias getvideo="youtube-dl -f mp4"
# Use trash instead of rm command so that you can retrieve deleted files
alias rm="trash"
# Open git config
alias gitconfig="code ~/.gitconfig"
# Open Graveflex directory
alias gfx="cd code/graveflex"
# For starting Rails server bound to port 3030 & listen 
# on all interfaces, not just the loopback interface(127.0.0.1)
alias rs="rails s -p 3030 -b 0.0.0.0"
# Git add .
alias ga="git add ."
# Git status
alias gst='git status'
# Git pull
alias gl="git pull"
# Git pull origin
alias glo="git pull origin"
# Git pull origin master
alias glom="git pull origin master"
# Git push origin
alias gpo="git push origin"
# Git push origin
alias gpom="git push origin master"
# Git checkout
alias gch="git checkout"
# Create a new branch and checkout into it
alias gchb="git checkout -b"

source /Users/BrettCimbalik/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
