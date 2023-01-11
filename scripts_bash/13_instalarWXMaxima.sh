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
URL_MAXIMA='https://github.com/wxMaxima-developers/wxmaxima/archive/refs/tags/Version-22.12.0.tar.gz'
DEPENDENCIAS_MAXIMA=(
  build-essential 
  libwxbase3.0-dev 
  libwxgtk3.0-gtk3-dev 
  libwxgtk-webview3.0-gtk3-dev 
  ibus-gtk 
  ibus-gtk3 
  checkinstall 
  gettext 
  cmake 
  pandoc 
  po4a
)

# função ----------------------------------------------------------------->>
instalar_wxmaxima ()
{
  echo 
  echo "##### Intalação do wxMaxima ========================================"
  echo 
  echo "# instalando possíveis dependências..."
  echo
  #----------------------------------------------------------->>
  for dependencias_maxima in "${DEPENDENCIAS_MAXIMA[@]}"
  do
    if ! dpkg -l | grep -q "$dependencias_maxima" ; then
      sudo apt install "$dependencias_maxima" -y
      else
        echo "   ## [INSTALADO] --- $dependencias_maxima"
    fi
  done
  #-----------------------------------------------------------<<
  echo 
  echo "# extraindo, do link, o nome do diretório..."
  echo
  maxima_tar=$(basename "$URL_MAXIMA")
  echo
  echo "# realizando o download..."
  echo
  cd "$TMP_INSTALACAO" && wget "$URL_MAXIMA"
  echo
  echo "# extraindo arquivos..."
  echo
  tar -xf "$maxima_tar"
  echo 
  echo "# entrando no diretório principal..."
  echo 
  cd wxmaxima-Version-22.12.0
  echo
  echo "# construindo pasta para compilação..."
  echo 
  mkdir -p ../build-wxm
  echo "# entrando e configurando os diretórios..."
  echo
  cd ../build-wxm
  cmake ../wxmaxima-Version-22.12.0
  echo
  echo "# construindo (build) wxMaxima..."
  cmake --build .                 
  echo 
  echo "# instalando..."
  sudo cmake --build . -- install
  echo 
  echo "-- FEITO (wxMaxima instalado)"
}
#-------------------------------------------------------------------------<<

# rodando função -----------------------------------------------------------
instalar_wxmaxima
