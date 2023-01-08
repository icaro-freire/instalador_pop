#!/bin/bash

#===========================================================================
# Nome     : main.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Script para instalação dos programas que uso na distribuição 
#            do Pop!_OS LTS 22.04
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# update e upgrade inicial ----------------------------------------------->>

# sudo apt update
# sudo apt upgrade -y
#-------------------------------------------------------------------------<<


# rodando as funções de instalação --------------------------------------->>
echo 
# ./scripts_bash/01_instalarGit.sh
# ./scripts_bash/02_instalarApt.sh
# ./scripts_bash/03_instalarFontes.sh
# ./scripts_bash/04_moverScripts.sh
# ./scripts_bash/05_instalarLua.sh
# ./scripts_bash/08_instalarNeovim.sh
#-------------------------------------------------------------------------<<

# mensagem final -----------------------------------------------------------

echo 
echo "#############################################################"
echo " A instalação das configurações do Pop_OS! LTS chegou ao fim "
echo "#############################################################"

# término do script ========================================================

exit
