# instalador_pop
> Scripts, em Bash, para configurações de programas no Pop!_OS 22.04 LTS

## Como usar... 

Esse repositório é dividido assim:

```bash
.
├── LICENSE
├── README.md
├── main.sh
├── minhas-fontes.tar.xz
├── binarios/
│   └── meus-scripts/
├── classe_latex/
│   └── coffee4/
├── scripts_r/
└── scripts_bash/
```



```bash
.
├── LICENSE
├── README.md
├── main.sh
├── minhas-fontes.tar.xz
├── binarios/
│   └── meus-scripts/
│       ├── atualizar.sh
│       ├── backup.sh
│       └── novo-script.sh
├── classe_latex/
│   └── coffee4/
│       └── coffee4.sty
├── scripts_r/
│   └── pacotes-r_instalar.R
└── scripts_bash/
    ├── 01_instalarGit.sh
    ├── 02_instalarApt.sh
    ├── 03_instalarSl.sh
    ├── 04_instalarFontes.sh
    ├── 05_moverScripts.sh
    ├── 06_instalarLua.sh
    ├── 07_instalarLaTeX.sh
    ├── 08_instalarNeovim.sh
    ├── 09_configurarNeovim.sh
    ├── 10_instalarR.sh
    ├── 11_instalarRStudio.sh
    ├── 12_instalarPacotesR.sh
    ├── 13_instalarWXMaxima.sh
    ├── 14_instalarTor.sh
    ├── 15_instalarFlatpak.sh
    └── 16_instalarOhMyZsh.sh
```

Ou, de forma mais reduzida: 

```bash 

```

O arquivo `main.sh` é o responsável pela integração dos _scripts_, em Bash ou R, para instalação de aplicativos ou pacotes. 
Você pode clonar o repositório

```bash 
git clone https://github.com/icaro-freire/instalador_pop.git
```

## Licença
instalador_pop/ `v0.1.0` </br> 
_Copyright_ :copyright: **⋅** 2023 **⋅** **Ícaro Vidal Freire** <br>
![GitHub](https://img.shields.io/github/license/icaro-freire/instalador_pop?style=plastic)

:warning: A maior parte das fontes são livres; todavia, algumas podem possuir 
          licença específica. 
          Verifique a licença de cada fonte, antes de instalar em seu sistema.

:pushpin: Não há garantias! Tudo é por sua conta em risco.
