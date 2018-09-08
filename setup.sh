#!/bin/bash -x

echo $PWD

function install_bash() {
  echo "Installing bash related stuff."
  source scripts/deploy_bash.sh
}

function install_zsh() {
  echo "Installing zsh related stuff."
  source scripts/deploy_zsh.sh
}

function install_common() {
  source scripts/deploy_git.sh
  source scripts/deploy_vim.sh
}

UNATTENDED=0

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -n | --unattended)
    UNATTENDED=1
    shift # past argument
    ;;
    -s | --shell)
    SHELL=$2
    shift # past argument
    ;;
    *)
    echo "Invalid argument given: $1"
    ;;
esac
shift
done

echo "Deploying dotfiles"
if ! [ -z ${SHELL+x} ] && [ $UNATTENDED -eq 0 ]; then
  read -p "Which shells, zsh, bash or both?" SHELL
  export SHELL
fi

install_common

case $SHELL in
  'zsh' )
    install_zsh
    ;;
  'bash' )
    install_bash
    ;;
  'both' )
    install_zsh
    install_bash
    ;;
    * )
    echo "Invalid shell option."
    ;;
esac
