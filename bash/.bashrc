# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Define aliases
[ -s $HOME/.bash_aliases ] && source $HOME/.bash_aliases

# Only run this on linux E5 machines
# This needs change, because there are linux machines
# where the LHCbSoftware is not installed
if [ "$OSTYPE" == "linux-gnu" ]
then
  # Source global definitions
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi

  if [ "$PBS_ENVIRONMENT" == "PBS_BATCH" ]
  then
    source /lhcbsoft/LHCbSoftwareSetup.sh
  else
    alias lhcbSetup='source /lhcbsoft/LHCbSoftwareSetup.sh'
  fi

  if [[ $- =~ "i" ]]
  then
    source /lhcbsoft/LHCbSoftwareSetup.sh
  fi
fi

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 
