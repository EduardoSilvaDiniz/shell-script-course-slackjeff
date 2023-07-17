#!/usr/bin/env bash
#
#
#--------------------------------------------------------------------------#
# Criador por Eduardo Silva, Email:eduardofox989@protonmail.com
# Aluno do Professor: Jeffeson Rocha, slackjeff
# Primeiro script criado entao se estive com problemas envie um email
# ou reporte na pagina do github
#--------------------------------------------------------------------------#
#
# Objetivo
#---------------------------------------------------------------------------------------------------------------#
# Script Foi criado com a ideia de facilitar A instalacao
# de varios softwares e depedencias no Fedora 35 >> adiante
# Este Script instala, Wine e todas as depedencias, Steam, Lutris
# softwares de multimedia, VLC e Kodi
# tambem Ativa o Repositorio Oficial do flathub
# E instalar o Spotify via flatpak
# tambem instalar addons do gnome como gnome-tweaks e gnome-extensions
# E para finalizar ativar e instalar um Kernel Customizado com os patches (Futex2, zen, OpenRGB, Winesync)
# é um substituto do kernel da distro construído usando a melhor configuração e fontes de kernel para cargas de
# trabalho de desktop, multimídia e jogos
# e permite configurar o RGB de varios Hardwares.
# e como bonus no Final do script tambem modificar o Terminal com tema StarShip
# E ainda completa adicionando Minha configuracoes do .bashrc e .nanorc
#---------------------------------------------------------------------------------------------------------------#
#
# para quem nao conhece o comando alias, ele E um atalho de comandos, por exemplo
#--------------------------------------------------------------------------------------------------------------#
# alias install="sudo dnf install"
# com essa configuracao, no bash, voce so precisa escreve, install, e o bash vai entende "sudo dnf install"
# entao para instalar usando alias, apenas escreva, "install steam" e vai executar "sudo dnf install steam"
#--------------------------------------------------------------------------------------------------------------#
#
# Minha configuracao do Bash Alias
#-------------------------------------#
# install = sudo dnf install
# update  = sudo dnf update
# remove  = sudo dnf remove
# ls      = ls -lh --color
# la      = ls -lha --color
#-------------------------------------#
#
# Variveis de Instalacao
#-----------------------------------------------------------------------------------------------------#
winepack="sudo dnf groupinstall 'C Development Tools and Libraries'"
winepack2=
winepack3=
winepack4=
softgame="sudo dnf install steam lutris"
multimedia="sudo dnf install kodi vlc qbittorrent"
flatinstall="flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo"
spotify="flatpak install flathub com.spotify.Client"
gnome_addons="sudo dnf install gnome-tweaks gnome-extensions-app"
starship="sudo dnf install starship"
#-----------------------------------------------------------------------------------------------------#

function test(){	#Funcao de Testes
		# Teste de Super User
	(("$UID" == "0")) || { echo "Apenas Super User pode executar esse script" ; exit 1 ;}
	echo "Testando sua Internet..."
	sleep 2s  			#Teste de Internet
	wget -q --spider www.google.com && echo "Internet Ok..." || { echo "Sem Conecxao a Internet, Verifique sua rede [ERRO]" ; exit 1;}
}
function fedora(){		#Funcao Adiciona parametros ao DNF e atualiza o Sistema

  read -p "Gostaria de Adicionar alguns Parametros, Para Acelerar o Download ? [S/n] " opcao
	if (("$opcao" == "S")); then
	    echo Test=1 >> /etc/dnf/dnf.conf
	else
		echo "Ok..."
	fi

	echo "Verificando Atualizacoes..."
	sleep 0.5s
	sudo dnf update --refresh

  read -p "Gostaria de instalar o pacote de Software para jogar no Linux ? [S/n]" opcao
	if (("$opcao" == "S")); then
	   "$winepack" && "$softgame" && "$multimedia"
	else
	  echo "Ok..."
	fi
}


select menu in "Adicionar Parametros Ao DNF" "Atualizar Sistema" "Instalar o Wine" "Instalar Steam,Lutris" \
"instalar software de multimedia" "Ativar o Repositorio Flathub" "Instalar spotify" "instalar addons do gnome" \
"instalar Starship" "Instalar O Kernel Custom"; do
  case "$REPLY" in
	1)
;;
	2)
;;
	3)
;;
	4)
;;
	5)
;;
	6)
;;
	7)
;;
	8)
;;
	9)
;;
	10)
;;







done







