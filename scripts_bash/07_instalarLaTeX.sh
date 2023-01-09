#!/bin/bash

#===========================================================================
# Nome     : 06_instalarLaTeX.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala os programas da distribuição MiKTeX para LaTeX
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================


# instalando os programas da distribuição MiKTeX ------------------------->>

instalar_LaTeX(){
  echo 
  echo "##### Instalando MiKTeX ========================================================"
  echo
  echo " # adicionando chave GPG..."
  echo 
  #------------------------------------
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
  #------------------------------------
  echo 
  echo " # registrando a fonte de instalação..."
  echo 
  #------------------------------------
  echo "deb http://miktex.org/download/ubuntu jammy universe" | sudo tee /etc/apt/sources.list.d/miktex.list
  #------------------------------------
  echo 
  echo " # instalando MiKTeX..."
  echo 
  #------------------------------------
  sudo apt update -qq
  sudo apt install miktex
  #------------------------------------
  echo 
  echo "----- FEITO (LaTeX instalado - lembrar de atualizar MikTeX)"
}
#-------------------------------------------------------------------------<<

# rodando a função 
instalar_LaTeX

