#!/bin/bash

#===========================================================================
# Nome     : 14_instalarTor.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala do Broser Tor
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variáveis ----------------------------------------------------------------
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
URL_TOR='https://www.torproject.org/dist/torbrowser/12.0.1/tor-browser-linux64-12.0.1_ALL.tar.xz'

# criando diretório temporário ---------------------------------------------
mkdir -p "$TMP_INSTALACAO"

# criando a função de instalação -------------------------------------------
instalar_tor () 
{
  nome_tor_extensao=$(basename "$URL_TOR")
  echo 
  echo "##### Instalando o Tor Browser ================================================="
  echo
  #-------------------------------------------------------------------------
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  #-------------------------------------------------------------------------
  echo " # fazendo o download..."
  echo 
  #-------------------------------------------------------------------------
  wget "$URL_TOR"
  #-------------------------------------------------------------------------
  echo 
  echo " # extraindo arquivos..."
  echo 
  #-------------------------------------------------------------------------
  tar -xf "$nome_tor_extensao" 
  #-------------------------------------------------------------------------
  echo " # movendo para HOME..." 
  #-------------------------------------------------------------------------
  mv tor-browser "$HOME"
  #-------------------------------------------------------------------------
  echo
  echo "-- FEITO (Tor instalado)"
}

# rodando a função ---------------------------------------------------------
instalar_tor

