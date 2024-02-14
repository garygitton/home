## Easier navigation
colorflag="--color"
export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, excluding . and ..
alias la="ls -lAF ${colorflag}"

# List only directories
alias ld="ls -lF ${colorflag} | grep --color=never '^d'"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Install script
alias getphpunit="wget https://phar.phpunit.de/phpunit.phar"
alias getcomposer="curl -sS https://getcomposer.org/installer | php"
alias getcomposergraph="wget http://www.lueck.tv/graph-composer/graph-composer.phar"
alias getsecuritychecker="wget http://get.sensiolabs.org/security-checker.phar"
alias getdeptrac="wget https://github.com/sensiolabs-de/deptrac/releases/download/0.8.2/deptrac.phar"
alias getnvm="curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"

# Git
alias gs="git status"
alias gc="git commit -m"
alias gcm="git checkout master"
alias gfa="git fetch --all"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gpa="git pull --all"

# Gitk
alias gitk="gitk --all"

# PHP
alias phpunit="php ./vendor/bin/phpunit"
alias composer-install="docker run --rm --interactive --tty --volume $PWD:/app --volume $COMPOSER_HOME:/tmp --volume /etc/passwd:/etc/passwd:ro --volume /etc/group:/etc/group:ro --volume $SSH_AUTH_SOCK:/ssh-auth.sock --user $(id -u):$(id -g) --env SSH_AUTH_SOCK=/ssh-auth.sock composer install --ignore-platform-reqs --no-scripts"
alias phpqa="docker run -it --rm -v $(pwd):/project -w /project jakzal/phpqa:alpine"
alias count-php-file="find ./ -iname *.php|wc -l"

# Docker
alias docker-delete-all-containers='docker rm $(docker ps -aq)'
alias docker-delete-all-images='docker rmi $(docker images -q)'
alias docker-list-container-ids='docker ps -aq'
alias docker-stop-all-running-containers='docker stop $(docker ps -aq)'

# Miscellaneous
alias bcrypt="docker run epicsoft/bcrypt hash"
alias image-enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'
