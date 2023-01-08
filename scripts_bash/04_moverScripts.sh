#!/bin/bash

#===========================================================================
# Nome     : 04_movendoScripts.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Move três scripts em Bash para o diretório ~/bin
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variáveis de caminhos relativos ---------------------------------------->>
BINARIOS_DESTINO="$HOME/bin" 
BINARIOS_ORIGEM="./binarios/meus-scripts"
#-------------------------------------------------------------------------<<

# função que move scripts ------------------------------------------------>>
mover_scripts(){
  echo
  echo "##### Movendo meus scripts ================================================="
  echo
  mkdir -p "$BINARIOS_DESTINO"
  mv "$BINARIOS_ORIGEM" "$BINARIOS_DESTINO"
  echo 
  echo "----- FEITO (scripts movidos)"
}
#-------------------------------------------------------------------------<<

mover_scripts
