#!/bin/bash

#===========================================================================
# Nome     : 12_instalarWXMaxima.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala o WXMaxima
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variáveis ----------------------------------------------------------------
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
URL_MAXIMA='https://github.com/wxMaxima-developers/wxmaxima.git'
# função ----------------------------------------------------------------->>
instalar_wxmaxima ()
{
  # realizando o download...
  cd "$TMP_INSTALACAO" && git clone "$URL_MAXIMA"
  # extrair arquivos 
  # tar -xf $(basename "$URL_MAXIMA")
}
#-------------------------------------------------------------------------<<

# rodando função -----------------------------------------------------------
instalar_wxmaxima
