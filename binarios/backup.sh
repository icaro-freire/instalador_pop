#!/bin/bash

#===========================================================================
# Nome     : backup.sh
#            Copyright (c) 2022 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Script para backup sincronizado entre minha home e hd_antigo
# Licença  : The MIT License (MIT)
# Versão   : 0.1.1
#---------------------------------------------------------------------------
# Como usar: Digitar 'backup.sh', no terminal  
#===========================================================================

# variáveis ----------------------------------------------------------------
origens=(
  /home/icarofreire/Documentos
  /home/icarofreire/Imagens
  /home/icarofreire/bin/meus_scripts
  /home/icarofreire/fontes_icaro
  /home/icarofreire/projetos_LaTeX
  /home/icarofreire/projetos_R
  /home/icarofreire/repositorios_GitHub
  /home/icarofreire/Lua
)
destino=/media/icarofreire/hd_interno/.backup

# comandos para sincronização ----------------------------------------------

rsync -hva --delete "${origens[@]}" $destino
