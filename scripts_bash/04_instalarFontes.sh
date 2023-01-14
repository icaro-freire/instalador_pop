#!/bin/bash

#===========================================================================
# Nome     : 04_instalarFontes.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: 
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# paths ------------------------------------------------------------------>>

FONTES_DESTINO="$HOME/.fonts" 
FONTES_ORIGEM=./minhas-fontes/*
#-------------------------------------------------------------------------<<

# função ----------------------------------------------------------------->>

intalar_fontes(){
  echo 
  echo "##### Copiando as fontes e atualizando cache ==============================="
  echo
  echo "# descompactando..."
  echo
  tar -xf minhas-fontes.tar.xz
  echo 
  echo "# apagando arquivo minhas-fontes.tar.xz"
  echo 
  rm minhas-fontes.tar.xz 
  echo 
  echo "# movendo as fontes e instalando ..."
  mkdir -p "$FONTES_DESTINO" 
  mv $FONTES_ORIGEM "$FONTES_DESTINO" 
  sudo fc-cache -vf  
  fc-cache -vf
  echo 
  echo "----- FEITO (fontes movidas e cache atualizado)"
}
#-------------------------------------------------------------------------<<

# rodando a função ------------------------------------------------------->>

intalar_fontes
#-------------------------------------------------------------------------<<
