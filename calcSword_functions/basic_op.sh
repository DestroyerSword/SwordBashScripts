#! /bin/bash
#Author: Antonio Carretero Sahuquillo
#This bash scrpt defines the env of basic operations.
#+ - * / %

#Header of the basic operations script
clear
echo -e "\n\t|======== calcSword - Basic Operations ========|"

### Help Menu ###
help_menu(){
	echo -e "\n\t|======== calcSword - Basic Operations ========|"
	echo -e "\t| -To exit write 'q/Q/exit' "
	echo -e "\t| -Basic arithmetic operators: \n\t|\tAddition: '+' \n\t|\tSubstraction: '-' \n\t|\tMultiiplication: '*' \n\t|\tDivision: '/' \n\t|\tModulus: '%'"
	echo -e "\t|"
	echo -e "\t| -Basic relational operators: \n\t|\tEqual: '==' \n\t|\tNot Equal: '!=' \n\t|\tLess than: '<' \n\t|\tLess than or equal: '<=' \n\t|\tGreater than: '>' \n\t|\tGreater than or equal: '>='"
	echo -e "\t|"
	echo -e "\t| -Basic logical operators: \n\t|\tAND: '&&' \n\t|\tOR: '||' \n\t|\tNOT: '!'"
	echo -e "\t|"
	echo -e "\t| -Bitwise operators: \n\t|\tAnd: '&' \n\t|\tOr: '|' \n\t|\tXor: '^' \n\t|\tCompliment: '~' \n\t|\tLeft shift: '<<' \n\t|\tRight shift: '>>'"
	echo -e "\t|==============================================|\n"
}

#Input string variable
input_op=""

#################
### Main Loop ###
#################
while [ 1 ]; do

	read -p "cs-[BasicOp]>> " input_op

	#Condition to exit
	if [[ $input_op = "q" ]] || [[ $input_op = "Q" ]] || [[ $input_op = "exit" ]]; then
		#Exits this mode
		exit
	fi

	if [[ $input_op = "help" ]]; then
		help_menu
	fi

	echo $(($input_op))

done
