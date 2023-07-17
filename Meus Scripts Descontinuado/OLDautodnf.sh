#!/usr/bin/env bash
#===================================================================================
# criei esse script para automatizar a instalacao dos softwares que eu mais uso
# e como eu gosto de testa varias distros, fiz esse script universal
# deve funciona com a maioria das distros.
# qualquer problema repostar ao meu github="eduardofox989@protonmail.com"
#
# criado por Edu, Um jovem programador.
#
# Primeiro o script vai testa algumas coisas e antes de instalar qualquer software
# tambem rodara um teste para verificar se ja esta instalando
#===================================================================================

echo "executando Autodnf..." && #sleep 2s

#verificando se E ROOT
[[ "UID" -ne "0" ]]  \
&& { echo "E Necessario ser Super usuario, tente 'sudo ./autodnf' :b " ; exit 1;}

#Verificando a internet
echo "antes de inicia o script, vamos testa sua internet.." && #sleep 2s
wget -q --spider www.google.com		\
&& echo "Concluido com exito"		\
|| { echo "Correu um problema, verifique sua conexao a internet" ; exit ;}

#Qual Distro esta sendo usando...

echo \
"================================
1)Fedora 35 ou superior
2)ArchLinux, Manjaro
3)Solus
================================="
read -p "qual E sua distro? (Numero) " distro

case "$distro" in

	1)1 read -p "Gostaria de adiciona alguns argumenstos para melhorar a velocidade do dnf? [S/n] " continua ; read -p "tambem gostaria de troca os mirror por um mais proximo? [S/n] " mirror
		if [[ "$continua" = "S" ]]; then
		$(echo Test=1 >> /etc/dnf/dnf.conf)
		else
		    echo "OK"
		fi
			;;

	2)2 echo "BTW i use Arch" ;;

	3)3 echo "Solus, boa distro" ;;

	*) echo "Parametro Incorreto [ERRO]" ;;

esac

#Teste de qual distro foi escolhida
#test "$distro" = "$fedora" \

#Adicionando argumentos no /etc/Empacotador
#DNF Fedora 34/35>>
#continua$={continua^^}

#Pacman ArchLinux/Manjaro
#read -p "btw I use Arch..., gostaria de ativar o Download paralelos do pacman? [S/n] " continua \
#&& read -p "tambem gostaria de troca os mirror por um mais proximo? [S/n] " mirror
#continua$={continua^^}

#test "$continua" = "S"	\
#&& sudo echo test=1 >> /etc/dnf/dnf.conf  \
#|| echo "ok... continuando o script"

#atualizado o sistema
#sudo dnf search steam

#pack="dnf"


#instalando softwares

#[[ ! -e /usr/bin/steam ]]

pwd


# sudo "$pack" steam 						\
# && echo -e "\n AUTODNF seu sistema ja possui a steam, nada a fazer\n"	\
# || echo -e "\nsua distro nao possui steam no repositorio, recomendo procurar na wiki, nada a fazer\n"

# sudo "$pack" lutris						\
# && echo -e "\n AUTODNF seu sistema ja possui a lutris, nada a fazer\n"  \
# || echo -e "\nsua distro nao possui Lutris no repositorio, recomendo procurar na wiki, nada a fazer\n"

# sudo "$pack" sasdas 						\
# && echo -e "\n AUTODNF seu sistema ja possui a gfdas, nada a fazer\n	\
# || echo -e "\nsua distro nao possui agsd no repositorio, recomendo procurar na wiki, nada a fazer\n
