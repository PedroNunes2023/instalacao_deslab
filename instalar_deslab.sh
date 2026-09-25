#!/bin/bash

echo "Olá!"

#Instalação do miktex e graphviz

apt get miktex
apt install miktex

apt get graphviz
apt install graphviz

#Criação de ambiente virtual de python.
#Caso já exista é perguntado se deseja criar um novo

VENV="venv_deslab"

if [ -d "$VENV" ]; then
    echo "Um ambiente virtual chamado '$VENV' já existe."
    read -p "Apagá-lo e criar um novo? (s/n): " escolha

    if [ "$escolha" = "s" ]; then
        echo "Apagando ambiente virtual antigo..."
        rm -rf "$VENV"
    else
        echo "Saindo."
        exit 0
    fi
fi

echo "Criando ambiente virtual..."
python3 -m venv "$VENV"

source "$VENV/bin/activate"

pip install networkx
pip install pyparsing
pip install pandas
pip install portion
pip install pydot

python3 -m idlelib idle

echo "Pronto."
	
