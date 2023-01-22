#!/bin/bash

#===========================================================================
# Nome     : 15_instalarFlatpak.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instala lista de programas pelo Flatpak
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# variáveis ----------------------------------------------------------------
PROGRAMAS_FLATPAK=(
  org.octave.Octave
  org.geogebra.GeoGebra 
  com.obsproject.Studio
  org.telegram.desktop
  org.kde.okular
  org.mozilla.Thunderbird
  org.inkscape.Inkscape
)

# função de instalação -----------------------------------------------------

instalar_flatpak() 
{
  echo 
  echo "##### Instalando lista de programas via Flatpak ================================"
  echo 
  #----------------------------------------------------------------------->>
  for programas_flatpak in "${PROGRAMAS_FLATPAK[@]}"
  do
    if ! flatpak list | grep -q "$programas_flatpak" ; then
      flatpak install flathub "$programas_flatpak" -y
      else
        echo "  ### [INSTALADO] --- $programas_flatpak"
    fi
  done
  #-----------------------------------------------------------------------<<
  echo
  echo "**---** FEITO (Octave, GeoGebra, OBS, Telegram, Okular, Thunderbird e Inkscape instalados)" 
}

# rodando a função ---------------------------------------------------------
instalar_flatpak
