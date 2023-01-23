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

Explicando cada item:

- **LICENSE** Arquivo que detalha a licença utilizada para esse conjunto de _scripts_.
- **main.sh** O arquivo `main.sh` é o responsável pela integração dos _scripts_, em Bash ou R, para instalação de aplicativos ou pacotes. Basicamente você deve rodá-lo para que a configuração ocorra. Ou seja, os pacotes e aplicativos que selecionei, são instalados e configurados ao fazermos, no diretório `instalador_pop/`, o seguinte comando no _shell_: `./main.sh`
- **minhas-fontes.tar.xz** São as fontes que em meu sistema para diversos documentos. A maioir parte é livre. Mas, aconselho observar a licença em cada uma para usar em seu sistema. 
- **binarios/** É um diretório onde se encontra um outro diretório, `meus-scripts`, que, como o próprio nome sugere, possuem alguns scripts em bash que uso frequentemente: `atualizar`, que é responsável por fazer update, upgrade, flatpak update e limpeza simples; `backup.sh`, que transfere os arquivos que desejo fazer bakup para um HD; e, `novo-script`, que gera um script com cabeçalho para cada novo script que desejo construir. 
- **classe_latex/** Neste diretório está um outro diretório (`coffee4/`) com o arquivo `coffee4.sty`. Uma classe em LaTeX2e que uso em outras classes para documentos pessoais. 
- **scripts_r/** Contém o script, em R, `pacotes-r_instalar.R`, que instala os principais pacotes que uso no R.
- **scripts_bash/** É neste diretório que estão 16 scripts em bash para configuração dos principais programas que uso. Cada script possui suas peculiaridades. Portanto, é recomendado ler cada um deles e verificar o que deseja retirar ou acrescentar. Você pode adicionar seu próprios scripts aqui e depois chamá-lo no arquivo `main.sh`.

### Passo a passo

Depois de analisar o que deseja instalar dessa configuração, você pode seguir os seguintes passos para usar esses scripts:

1. Clone o repositório com:

```bash 
git clone https://github.com/icaro-freire/instalador_pop.git
```

2. Entre no diretório `instalador_pop/` e rode o arquivo `main.sh`:

```bash
cd instalador_pop
./main.sh
```

:warning: No teste que fiz, o script `08_instalarNeovim.sh` não conseguiu instlar uma das dependências listadas. Após o termino da configuração, refiz a instalação individualmente e ocorreu tudo bem. Corrigi o script, mas ainda não testei se a mudança instalará, na sequência que indiquei, o Neovim. 

## Licença
instalador_pop/ `v0.1.0` </br> 
_Copyright_ :copyright: **⋅** 2023 **⋅** **Ícaro Vidal Freire** <br>
![GitHub](https://img.shields.io/github/license/icaro-freire/instalador_pop?style=plastic)

:warning: A maior parte das fontes são livres; todavia, algumas podem possuir 
          licença específica. 
          Verifique a licença de cada fonte, antes de instalar em seu sistema.

:pushpin: Não há garantias! Tudo é por sua conta em risco.
