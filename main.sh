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
# variáveis -------------------------------------------------------------->>
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
#-------------------------------------------------------------------------<<

# criando diretório temporário ------------------------------------------->>
mkdir -p "$TMP_INSTALACAO"
#-------------------------------------------------------------------------<<

# update e upgrade inicial ----------------------------------------------->>
echo "***** Fazendo update e upgrade iniciais **************************************"
echo
sudo apt update
sudo apt upgrade -y
echo 
#-------------------------------------------------------------------------<<

# rodando as funções de instalação --------------------------------------->>
echo 
echo "***** Iniciando a instalação *************************************************"
echo 
#./scripts_bash/01_instalarGit.sh
#./scripts_bash/02_instalarApt.sh
#./scripts_bash/03_instalarSl.sh
#./scripts_bash/04_instalarFontes.sh
#./scripts_bash/05_moverScripts.sh
#./scripts_bash/06_instalarLua.sh
#./scripts_bash/07_instalarLaTeX.sh 
#./scripts_bash/08_instalarNeovim.sh
#./scripts_bash/09_configurarNeovim.sh
#./scripts_bash/10_instalarR.sh
#./scripts_bash/11_instalarRStudio.sh
./scripts_bash/12_instalarPacotesR.sh
#./scripts_bash/13_instalarWXMaxima.sh 
#./scripts_bash/14_instalarTor.sh
#./scripts_bash/15_instalarFlatpak.sh
#./scripts_bash/16_instalarOhMyZsh.sh
echo
echo "***** FIM DAS CONFIGURAÇÕES **************************************************"
echo 
#-------------------------------------------------------------------------<<

# limpeza ---------------------------------------------------------------->>
echo "***** Iniciando limpeza ******************************************************"
echo 
echo "* removendo diretório temporário..."
echo 
#sudo rm "$TMP_INSTALACAO" -r 
echo 
echo "* atualizações e remoção de arquivos desnecessários..."
echo 
#---------------------------------------->>
sudo apt update && sudo apt upgrade -y 
flatpak update -y 
sudo apt autoclean -y 
sudo apt autoremove -y
#----------------------------------------<<
echo 
echo "***** FIM DA LIMPEZA *********************************************************"
#-------------------------------------------------------------------------<<
# mensagem final -----------------------------------------------------------

echo 
echo "#############################################################"
echo " A instalação das configurações do Pop_OS! LTS chegou ao fim "
echo "#############################################################"
echo 

# término do script ========================================================

exit
