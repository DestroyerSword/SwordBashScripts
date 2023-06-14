#! /bin/bash
#Author: Antonio Carretero Sahuquillo
#This bash scrpt defines the env of basic operations.
#+ - * / %

#Header of the basic operations script
clear
echo -e "\n\t|======== calcSword - Basic Operations ========|"
echo -e "\t| -To exit write 'q/Q/exit' "
echo -e "\t| -Basic operations: '+' / '-' / '*' / '/' / '%' / '**'"
echo -e "\t|==============================================|\n"

#Input variable
input_op=""

while [ 1 ]; do

	read -p "cs-[BasicOp]>> " input_op

	#Condition to exit
	if [[ $input_op = "q" ]] || [[ $input_op = "Q" ]] || [[ $input_op = "exit" ]]; then
		#Exits this mode
		exit
	fi

	echo $((input_op))
done
