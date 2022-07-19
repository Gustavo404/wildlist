# wildlist

[![C C17](https://img.shields.io/badge/C-C17-blue)](https://pt.wikipedia.org/wiki/C_(linguagem_de_programa%C3%A7%C3%A3o)) [![ShellScript Bash](https://img.shields.io/badge/ShellScript-Bash-blue)](url) [![Licença](https://img.shields.io/badge/licença-GPLv3-yellow.svg)](https://github.com/gustavo404/wildlist/blob/main/LICENSE) [![Youtube](https://img.shields.io/badge/Youtube-Gustavo404-red.svg)](https://youtube.com/gustavo404)

WildList é um programa que gera WordLists grandes e pequenas, com padrões complexos que seriam dificeis de ser gerados manualmente, com os geradores programados em C e compilados com o clang, para o maior desempenho, e o gerenciador programado em ShellScript (bash) para melhor fluidez no linux.

Dependencias
----

O WildList nescessita apenas do git para ser baixado:

	apt-get install git -y

Instalação
----

Primeiro, baixe o WildList usando o git:

	git clone https://github.com/Gustavo404/wildlist/

Depois, acesse o diretorio do WildList:

	cd wildlist

Por fim, execute o instalador

	./install

Uso
----

Para exibir o menu de ajuda use:

	./wildist -h
				
##### Resolve:

	./wildist -r clean			apaga tudo que o programa criou
	./wildist -r reinstall		reinstala e atualiza o programa
	./wildist -r pull			atualiza o programa

##### Generate:

	./wildist -g light			gera a lista de senhas leve
	./wildist -g heavy			gera a lista de senhas pesada
