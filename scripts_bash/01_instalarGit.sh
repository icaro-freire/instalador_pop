#!/bin/bash

#===========================================================================
# Nome     : 01_instalarGit.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Adicionando ppa e instalando o Git, além de fazer as 
#            configurações básicas iniciais de usuário e e-mail
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# function --------------------------------------------------------------->>
instalar_git(){
  echo 
  echo "##### Adicionando e Instalando o Git ======================================="
  echo
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt update 
  sudo apt install git
  echo 
  echo "# configurando e-mail e usuário"
  echo
  read -p 'Digite o e-mail: ' email_git
  read -p 'Digite o usuário: ' usuario_git
  git config --global user.email "$email_git"
  git config --global user.name "$usuario_git"
  echo 
  echo "----- FEITO (Git instalado)"
}
#-------------------------------------------------------------------------<<

# run ----------------------------------------------------------------------
instalar_git
