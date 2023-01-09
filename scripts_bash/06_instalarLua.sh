#!/bin/bash

#===========================================================================
# Nome     : 05_instalarLua.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala a linguagem Lua
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# url para download dos binários ----------------------------------------->>

URL_LUA='https://www.lua.org/ftp/lua-5.4.4.tar.gz'
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
#-------------------------------------------------------------------------<<

# criando diretório temporário para downloads e instalação --------------->>
mkdir -p "$TMP_INSTALACAO"
#-------------------------------------------------------------------------<<

# intalando Lua ---------------------------------------------------------->>

instalar_lua(){
  # variável para nome do arquivo com extensão
  nome_lua_extensao=$(basename "$URL_LUA")''
  nome_lua=$(basename "$URL_LUA" .tar.gz)
  echo 
  echo "##### Instalando lua ======================================================"
  echo 
  #---
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; } 
  #---
  echo " # fazendo download..."
  echo
  #---
  wget "$URL_LUA"
  #---
  echo 
  echo " # extraindo os arquivos..."
  #---
  tar xzf "$nome_lua_extensao"
  #---
  echo 
  echo " # entrando no diretório..."
  #---
  cd "$nome_lua" || { echo "Erro na construção do diretório"; exit 1; }
  #---
  echo 
  echo " # construindo lua..."
  #---
  make
  #---
  echo 
  echo " # verificando se tudo ocorreu bem..."
  echo
  #---
  make test 
  #---
  echo 
  echo " # instalando... "
  #---
  sudo make install 
  #---
  echo
  echo "----- FEITO (Lua instalada)" 
}
#-------------------------------------------------------------------------<<

# rodando a função =======================================================>>
instalar_lua
#=========================================================================<<
