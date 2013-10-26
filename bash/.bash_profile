#
# LOAD ALIASES
#
[ -s ~/.bash_aliases ] && source ~/.bash_aliases

# Load git autocompletion
[ -s ~/.git-completion.bash ] && source .git-completion.bash

# Load additional python modules
[ -s ~/.pythonpath ] && source .pythonpath

# Set new shell prompt 
PS1="\e[0;31m[\u@\h \W]\$ \e[m "
