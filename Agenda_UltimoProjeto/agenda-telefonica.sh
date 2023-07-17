#!/usr/bin/env bash


# Agenda Telefonica que puxa informacoes
# de um banco de dados CSV.
# 1- vamos armazenar o usuario ao banco de dados.

#==================Variaveis Global================#
banco_de_dados="dados.txt"
#============cores============#
vermelho="\033[31;1m"
fecha="\033[m"
#=================Testes Inicial===================#
[[ ! -e "$banco_de_dados" ]] && {
cat > "$banco_de_dados" <<EOF
###########'ID:CPF:Nome:SobreNome:DDD:Telefone'########
EOF
}

(($UID==0)) && { echo 'USUARIO ROOT NAO'; exit 1 ;}


#====================Funcoes=======================#
function adicionar(){
lista=("Nome" "Sobrenome" "CPF" "DDD" "Telefone")
i=1
	for dados in "${lista[@]}"; do
		 while [[ -z "${dados[i]}" ]]; do
			read -p "${dados}: " dados[$i]
		 done
		 ((i++))
	done

if ! grep -qo "${dados[2]}" "${banco_de_dados}"; then
	dados[3]=$(sed -n 's/\./-/g' <<< "${dados[3]}" 2>&1)
	ID=$(($(wc -l < "${banco_de_dados}")+1))
	if echo "${ID}:${dados[3]}:${dados[1]}:${dados[2]}:${dados[4]}":"${dados[5]}" | tr 'A-Z' 'a-z' >> "${banco_de_dados}"; then
		echo "Dados enviado com sucesso para: ${banco_de_dados}"
	else
		echo "Houve Algum Erro!"
	fi
else
   echo 'O CPF Existe no bando de dados! saindo...'
   exit 1
fi
}


function pesquisa(){
    if grep -qwio "$parametro" "$banco_de_dados"; then
	for dados in "nome" "cpf" "ddd" "telefone"; do
		nome=""
	done
    fi
}

# Menu de Entrada
case $1 in

	-a|--adicionar) shift; adicionar ;; # Chamada funcao adicionar

	-h|--help) echo -e 'Script Simples de agenda, use -a,--adicionar, para adicionar seus dados no banco de dados, que fica no arquivo DADOS.txt' ;;

	-p|--pesquisar) shift; parametro="$1"; pesquisa ;; # Chamada funcao pesquisa

	4) ;;

	*) echo -e "nem um comando encontrado ${vermelho}[ERROR]${fecha}" ;;
esac








