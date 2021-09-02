# HUNTER HARRIS
# BASH PROFILE


# welcome message
# TODO: Find cool text file

# import aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# prompt
get_expression(){
  if [ $? = 0 ]; then
    printf "\e[1;32m(✿◠‿◠)\e[0m";
  else
    printf "\e[1;31m(-_-;)\e[0m";
  fi
}

export PS1="\n[ \e[1;34m\u\e[0m ] \e[1;36m\w\e[0m\n -> "
export PS1="\n \$(get_expression) || \e[1m\w\e[0m\n\e[1;37m -> \e[0m"


