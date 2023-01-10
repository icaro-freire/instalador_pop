#!/bin/bash

#===========================================================================
# Nome     : 10_instalarR.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala a linguagem R e algumas bibliotecas esseciais para 
#            principais pacotes que uso.
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# informações sobre a versão do R ---------------------------------------->>
## Jammy Jellyfish (22.04, amd64 apenas) 
## release: 4.2
## mirror: https://cran.fiocruz.br/
#-------------------------------------------------------------------------<<

# função para instalação do R ----------------------------------------------

instalar_r(){
  echo 
  echo "##### Instalação do R ======================================================"
  echo 
  echo "# instalando lsb-release e outros dois pacotes necessários..."
  sudo apt update -qq 
  sudo apt install lsb-release software-properties-common dirmngr -y
  echo 
  echo "# adicionando chave de assinatura segura..." 
  wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
  echo 
  echo "# adicionando repositório do CRAN..." 
  sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
  echo 
  echo "# atualizando repositórios e instalando o r-base ------------------------->>"
  sudo apt update -qq
  sudo apt install r-base -y
  echo "#--------------------------------------------------------------------------<<"
  echo 
  echo "# instalando o Java..." 
  sudo apt install default-jre default-jdk -y
  echo 
  echo "# setando o caminho para o Java..." 
  sudo R CMD javareconf
  echo 
  echo "# instalando o rJava..."
  Rscript -e 'install.packages("rJava", dependencies=TRUE)'
  echo
  echo "# instalando dependências para o tidverse"
  sudo apt install libssl-dev libcurl4-openssl-dev libxml2-dev -y
  echo 
  echo "-- Feito (R e dependências básicas instalados)"
}

# rodando a função ---------------------------------------------------------
instalar_r
