export GOPATH=$HOME/go

# Path to your oh-my-zsh installation.
export ZSH="/Users/jholmes/.oh-my-zsh"

export AWS_PROFILE="mobapi-dev"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.  # HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/serverless.zsh ]] && . ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/sls.zsh ]] && . ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/slss.zsh ]] && . ~/Downloads/mobile-gateway-api/services/mobapi/node_modules/tabtab/.completions/slss.zsh

ZSH_THEME="spaceship"


source "/Users/jholmes/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Alias vim to MacVim
alias vim='mvim -v'

# Git editor
export VISUAL='mvim -v'
export EDITOR="$VISUAL"

# Dev environment setup
export MOB_API_DIR='/Users/jholmes/dev/mobile-gateway-api'
export MOB_API_SERVICE_DIR='/Users/jholmes/dev/mobile-gateway-api/services/mobapi'
export MOBAPI_ENV='jack'
export MOBAPI_STAGE='rel'
export MOBAPI_DOMAIN_PREFIX='jack-'
export MOBAPI_AWS_PROFILE='mobapi-dev'
#export MOBILE_GATEWAY_API_BASE_URL='https://jack-api.mobile.vacasadev.io/v1'
#export MOBILE_GATEWAY_API_KEY='mAprNXh2RBtdGDZBsRpZVvcMfBfzUPpBYvYsoQpkxZemKeeXRjQwMFcjvv9qsQmC'

alias init="/Users/jholmes/dev/init_node/init.sh"

alias api='cd $MOB_API_DIR/services/mobapi'
alias trip='cd ~/Vacasa/trip-api'
alias api-root='cd $MOB_API_DIR'
alias dev='cd ~/dev' 

alias depjack='cd $MOB_API_DIR && make api && cd $OLDPWD'
alias remjack='cd $MOB_API_DIR && make api-remove && cd $OLDPWD'
alias packjack='cd $MOB_API_DIR && make api-package && cd $OLDPWD'
alias depjack-sumo='cd $MOB_API_DIR && make sumo && cd $OLDPWD'
alias remjack-sumo='cd $MOB_API_DIR && make sumo-remove && cd $OLDPWD'
alias depjackf='api && sls deploy function -f mobApiRequest --stage rel --env jack --aws-profile mobapi-dev && cd $OLDPWD'
alias test='npm run test'
alias jacklogs='serverless logs --stage rel --env jack --function mobApiRequest --aws-profile mobapi-dev'

export TEST_TRIP_API_BASE_URL=https://trip-api.guest.vacasadev.io/api
export TEST_TRIP_API_AUDIENCE=trip-api.guest.vacasastage.io
export TEST_IDP_IMPLICIT_CLIENT_ID=VCJ6juPc7HCDiKWWjSgYi1mAMO2hzEihzC1lkyDx
export TEST_IDP_ENDPOINT=https://stage.accounts.vacasa.io
export TEST_USER_EMAIL=vacasa.app.tester@gmail.com
export TEST_USER_PASSWORD='kNCye3&c3nC4AJAu'

