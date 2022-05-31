#!/bin/bash
cmp -s "tarefa.sh" "tarefa1.sh"
s=$?
if [ $s -eq 1 ]; then
	echo "Existe modificação"
	echo "Deseja efetuar reparo?(s/n)"
	read escolha
	if [ $escolha = "s" ]; then
		echo "Efetuando reparo!"
		cp "tarefa.sh" "tarefa1.sh"
		diff "tarefa.sh" "tarefa1.sh"
	elif [ $escolha = "n" ]; then
		echo "EXIT"

else
	echo "Não existe modificação"
	fi
fi