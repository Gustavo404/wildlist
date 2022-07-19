#!/bin/bash
#cliente do Wildist

# FUNÇÕES
function wdVerify() {
	if [[ -f $1 ]]; then
		echo "o arquivo existe"
	else
		echo "o arquivo não esxiste"
	fi
}

function wdResolve() {
	if [[ $1 = clean ]]; then
		echo "a função clean depende de todos os codigos funcionando"
	elif [[ $1 = reinstall ]]; then
		echo "a função reinstall precisa do backup.tar.gz"
	elif [[ $1 = pull ]]; then
		echo "a função pull depende do repositorio no github"
	else
		echo "erro na função wdResolve"
	fi
	exit
}

function wdInstall() {
	apt install clang tar git
	tar -xvzf wildist.tar.gz
	if [[ -f lib/WD_L.c ]] || [[ -f lib/WD_H.c ]]; then
		clang lib/WD_L.c -o bin/WD_L
		clang lib/WD_H.c -o bin/WD_H
	else
		echo "os arquivos da lib/ estão faltando"
		read -p "deseja resolver esse problema?[Y/n] " tmp
			if [[ $tmp = y ]] || [[ -z $tmp ]]; then
				wdResolve reinstall
			else
				echo "finalizando"
				exit
			fi
	fi
}

function wdBanner() {
	echo "WILDIST"
	cat README.md
}

function wdHelp() {
	cat README.md
	echo "usage:\n./wildist.sh [functions]"
	exit
}

function genLigth() {
	if [[ -f "bin/WD_L" ]]; then
			./bin/WD_L
		else
			echo "o arquivo $PWD/bin/WD_L não existe"
			read -p "deseja resolver esse problema?[Y/n] " tmp
			if [[ $tmp = y ]] || [[ -z $tmp ]]; then
				wdResolve reinstall
			else
				echo "finalizando"
			fi
		fi
	wdVerify out WD/WD_L4.txt
}

function genHeavy() {
	if [[ -f "bin/WD_H" ]]; then
			./bin/WD_H
		else
			echo "o arquivo $PWD/bin/WD_H não existe"
			read -p "deseja resolver esse problema?[Y/n] " tmp
			if [[ $tmp = y ]] || [[ -z $tmp ]]; then
				wdResolve reinstall
			else
				echo "finalizando"
			fi
		fi
	wdVerify out WD/WD_H4.txt
}

# RECONHECER ENTRADAS
while getopts ":hig:r:" arg; do
	case $arg in
		h)
			wdHelp
			;;
		i)
			wdInstall
			exit
			;;
		g)
			gen="${OPTARG}"
			if [[ $gen = heavy ]]; then
				genHeavy
			elif [[ $gen = ligth ]]; then
				genLigth
			else
				echo "o tipo de WD fornecida não existe!"
				echo $gen
				wdHelp
			fi
			;;
		r)
			res=${OPTARG}
			if [[ res = clean ]]; then
				wdResolve clean
			elif [[ res = reinstall ]]; then
				wdResolve reinstall
			elif [[ res = pull ]]; then
				wdResolve pull
			else
				echo "a função resolve fornecida não existe!"
				wdHelp
			fi
	esac
done
if [[ -z $1 ]]; then
	wdHelp
fi

# esperadas execussões pós ./wildist
#    || -h		executar wdHelp e fechar
# -g $arg 		identificar $arg e executar wdGenerate
# -r $arg 		identificar $arg e executar wdResolve
# -i 			instalar dependencias e compilar lib/
# 

