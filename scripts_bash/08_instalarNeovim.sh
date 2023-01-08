#!/bin/bash

#===========================================================================
# Nome     : 08_instalarNeovim.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala o editor de textos Neovim 
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variaveis ----------------------------------------------------------------
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
URL_NEOVIM='https://github.com/neovim/neovim' 

# diretório temporário para downloads e instalação -------------------------
mkdir -p "$TMP_INSTALACAO"

# dependencias Neovim ------------------------------------------------------
DEPENDENCIAS_NEOVIM=(
  ninja-build 
  gettext 
  libtool 
  libtool-bin 
  autoconf 
  automake 
  cmake 
  g++ 
  pkg-config 
  unzip 
  curl 
  doxygen
)

# instalar_neovim ----------------------------------------------------------
instalar_neovim(){
  echo 
  echo "##### Instalação do Neovim ================================================="
  echo 
  echo "# atualizando repositórios (silenciosamente) ..."
  sudo apt update -qq
  echo
  echo "# instalando dependencias ..."
  for programas_nvim in "${DEPENDENCIAS_NEOVIM[@]}"; do 
    if ! dpkg -l | grep -q "$programas_nvim"; then
      sudo apt install "$programas_nvim" -y
    else
      echo "  ### [INSTALADO] --- $programas_nvim "
    fi 
  done
  echo 
  echo "# mudando para diretório temporário ..."
  cd "$TMP_INSTALACAO"
  echo
  echo "# clonando o repositório do Neovim ..." 
  git clone "$URL_NEOVIM"
  echo
  echo "# entrando no diretório neovim e construindo ..."
  cd neovim && make CMAKE_BUILD_TYPE=Release
  echo
  echo "# instalando o Neovim ..."
  sudo make install
  echo 
  echo "----- FEITO (neovim instalado)"
}

# rodando a função ---------------------------------------------------------
instalar_neovim
