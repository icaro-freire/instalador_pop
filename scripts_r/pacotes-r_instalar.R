#===========================================================================
# Nome     : pacotes-r_instalar.R
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Script para instalação dos pacotes que uso.
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# função para instalar pacotes do CRAN ----------------------------------->>

instalar_pacotes_cran <- function() {
  # listas de pacotes 
  pacotes_cran <- c(
    "remotes", 
    "tidyverse",
    "ggforce",
    "xaringan",
    "xaringanthemer",
    "prettydoc",
    "DT", 
    "plotly", 
    "viridis", 
    "janitor", 
    "flexdashboard", 
    "usethis", 
    "learnr", 
    "bookdown", 
    "distill",
    "pagedown"
  ) 
  # instalação 
  install.packages(pacotes_cran)
}
#-------------------------------------------------------------------------<<

# função para instalar pacotes do GitHub --------------------------------->>

instalar_pacotes_github <- function() {
  # pacotes para instalação ----------------------------------------------
  pacotes_github <- c(
    "gadenbuie/xaringanExtra", 
    "cienciadedatos/dados", 
    "gadenbuie/rsthemes"
  )
  # efetuando a instalação dos pacotes -----------------------------------
  remotes::install_github(pacotes_github, force = TRUE) 
  # configurando rsthemes ------------------------------------------------
  ## instalando os temas do rsthemes 
  rsthemes::install_rsthemes() 
  ## escolhendo o tema a11y-dark 
  rstudioapi::applyTheme("a11y-dark {rsthemes}")
}
#-------------------------------------------------------------------------<<

# rodando as funções ----------------------------------------------------->>
instalar_pacotes_cran() 
instalar_pacotes_github()
#-------------------------------------------------------------------------<<
