# wildlist

[![C C17](https://img.shields.io/badge/C-C17-blue)](https://pt.wikipedia.org/wiki/C_(linguagem_de_programa%C3%A7%C3%A3o)) [![ShellScript Bash](https://img.shields.io/badge/ShellScript-Bash-blue)](url) [![Licença](https://img.shields.io/badge/licença-MIT-yellow.svg)](https://github.com/gustavo404/wildlist/blob/main/LICENSE) [![Youtube](https://img.shields.io/badge/Youtube-Gustavo404-red.svg)](https://youtube.com/gustavo404)

WildList é um programa que gera WordLists grandes e pequenas, com padrões complexos que seriam dificeis de ser gerados manualmente, com os geradores programados em C e compilados com o clang, para o maior desempenho, e o gerenciador programado em ShellScript (bash) para melhor fluidez no linux.
O programa possue poucas dependencias e alta eficiencia. <br>
Depois de compilado, pode rodar apenas com o bash funcionando. Estaremos sempre adicionando mais tipos de listas e talvez até mesmo uma lista media!

Dependencias
----

O WildList nescessita apenas do git para ser baixado:

	apt-get install git

após isso, o arquivo [install](https://github.com/gustavo404/wildlist/blob/main/install) instalará os pacotes _clang_ e _tar_ via apt <br>
clique [aqui](https://github.com/gustavo404/wildlist/blob/main/install) para ver mais

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

Links
----

Você tambem pode baixar o codigo no pacote compactado <br>
[![backup](https://img.shields.io/badge/backup-tar%20gz-blueviolet)](https://github.com/Gustavo404/wildlist/raw/main/wildlist)
[![backup](https://img.shields.io/badge/backup-zip-blue)](https://github.com/Gustavo404/wildlist/raw/main/wildlist)

Você tambem pode baixar as WordLists compactadas em .tar.gz aqui: <br>
[![WD_H4](https://img.shields.io/badge/heavy-tar%20gz-blueviolet)](https://github.com/Gustavo404/wildlist/raw/main/wd/WD_H4.tar.gz)
[![WD_L4](https://img.shields.io/badge/light-tar%20gz-blueviolet)](https://github.com/Gustavo404/wildlist/raw/main/wd/WD_L4.tar.gz)

depois de compilado, o programa não dependerá mais do pacote clang para gerar as WordLists <br>
serão adicionadas mais funções no futuro, você mesmo pode modificar o codigo da forma que quiser, ou esperar pelas novas atualizações!