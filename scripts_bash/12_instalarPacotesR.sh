#!/bin/bash

#===========================================================================
# Nome     : 12_instalarPacotesR.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala pacotes R que uso
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

instalar_pacotes_r(){
  echo 
  echo "##### Instalando pacotes R (vai demorar!) =================================="
  echo 
  Rscript ./scripts_r/pacotes-r_instalar.R
  echo 
  echo "-- Feito (pacotes do R)"
}

instalar_pacotes_r
