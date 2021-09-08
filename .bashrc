# HUNTER HARRIS
# BASH PROFILE


# welcome message
# TODO: Find cool text file

# import aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# EXPRESSION PROMPT
# return prompt face
getExpression() {
  if [ $? = 0 ]; then
    printf "\e[1;32m(✿◠‿◠)\e[0m";
  else
    printf "\e[1;31m(-_-;)\e[0m";
  fi
}

# returns if directory is in a git repo
inRepo() {
  d=`pwd`
  while [ "$d" != "" ]; do
    [ -d "$d"/.git ] && return 0
    d=${d%/*}
  done
  return 1
}

testRepo() {
  if [ $(inRepo) ]; then
    printf "true";
  else
    printf "false";
  fi
}

# return branch name if cwd is a git repository
getBranch() {
  #if [ $(git rev-parse --is-inside-work-tree &> /dev/null) == "true" ]; then
  if [ $(inRepo) ]; then
    branch_name="$(git symbolic-ref HEAD)"
    branch_name=${branch_name##refs/heads/}
    printf "\e[33m($branch_name)\e[0m";
  else
    printf "not a repo";
  fi
}

# export PS1="\n[ \e[1;34m\u\e[0m ] \e[1;36m\w\e[0m\n -> "
export PS1="\n \$(getExpression) || \e[1m\w\e[0m \$(getBranch) \n\e[1;37m -> \e[0m"


