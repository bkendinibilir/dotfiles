ZSH=~/.oh-my-zsh/

ZSH_THEME="powerlevel9k/powerlevel9k"

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  archlinux
  docker
  git
  golang
  kubectl
  pyenv
  python
)

# User configuration
source ~/.profile 

zstyle ':completion:*' rehash true

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/segfault/google-cloud-sdk/path.zsh.inc' ]; then source '/home/segfault/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/segfault/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/segfault/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
#source /usr/lib/node_modules/profitbricks-cli/autocomplete

# direnv
eval "$(direnv hook zsh)"

source $ZSH/oh-my-zsh.sh

#POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status root_indicator virtualenv \
  context dir dir_writable vcs background_jobs command_execution_time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs \
  command_execution_time)
POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHOW_CHANGESET=false

POWERLEVEL9K_VIRTUALENV_BACKGROUND='red'

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_TIME_BACKGROUND='255'

POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="white"

# POWERLEVEL9K_DIR_PATH_SEPARATOR="  "
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_PYTHON_ICON=''
POWERLEVEL9K_BACKGROUND_JOBS_ICON='\uf085'
POWERLEVEL9K_EXECUTION_TIME_ICON='\ufa1e'
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=''
POWERLEVEL9K_VCS_GIT_ICON=''
