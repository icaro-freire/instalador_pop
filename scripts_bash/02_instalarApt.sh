#!/bin/bash

#===========================================================================
# Nome     : 02_instalarApt.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instalação de uma lista de programas via 'apt'
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# lista de programas ----------------------------------------------------->>
PROGRAMAS_APT=(
  wget
  tree
  locate
  shellcheck
  nala
  testdisk
  git-flow
  zsh
  zathura
  zathura-cb
  zathura-ps
  zathura-djvu
  cmatrix
  cowsay
)
#-------------------------------------------------------------------------<<

# funcao para instalação ------------------------------------------------->>
instalar_apt(){
  echo 
  echo "##### Instalando programas via apt=========================================="
  echo
  #--------------------------------------------------------
  for programas_apt in "${PROGRAMAS_APT[@]}"; do 
    if ! dpkg -l | grep -q "$programas_apt"; then
      sudo apt install "$programas_apt" -y
    else 
      echo "    ## [INSTALADO] --- $programas_apt"
    fi 
  done
  #--------------------------------------------------------
  echo 
  echo "----- FEITO (apt instalado)"
}
#-------------------------------------------------------------------------<<

# instalando via apt ----------------------------------------------------->>
instalar_apt
#-------------------------------------------------------------------------<<
