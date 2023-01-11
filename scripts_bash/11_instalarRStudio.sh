#!/bin/bash

#===========================================================================
# Nome     : 11_instalarRStudio.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala o RStudio
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variáveis ----------------------------------------------------------------
TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"
URL_RSTUDIO='https://download1.rstudio.org/electron/jammy/amd64/rstudio-2022.12.0-353-amd64.deb'

# diretório temporário para downloads e instalação -------------------------
mkdir -p "$TMP_INSTALACAO"

# função para instalação ------------------------------------------------->>
instalar_rstudio(){
  # extraindo o nome (com extensão) da URL
  rstudio_deb=$(basename "$URL_RSTUDIO")
  echo 
  echo "##### Instalando o RStudio ================================================="
  echo 
  echo "# fazendo o dowload..." 
  echo
  cd "$TMP_INSTALACAO" && wget "$URL_RSTUDIO" 
  echo 
  echo "# instalando o RStudio..." 
  echo
  sudo dpkg -i "$rstudio_deb"
  echo 
  echo "-- Feito (RStudio instalado)"
}
#-------------------------------------------------------------------------<<

# rodando a função ---------------------------------------------------------
instalar_rstudio
