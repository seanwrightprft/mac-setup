# Set up vi options
set -o vi
export EDITOR=vi
export VISUAL=vi

export PATH="$HOME/homebrew/bin:$PATH"

# Set prompt
export PS1='
\e[35m$USER\e[0m@$HOSTNAME [\D{%H:%M:%S}] $PWD
$> '

function title {
echo -ne "\033]0;"$*"\007"
}

export BASH_SILENCE_DEPRECATION_WARNING=1

alias root='sudo su -'
