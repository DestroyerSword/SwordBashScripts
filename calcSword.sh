#! /bin/bash 
#Author: Antonio Carretero Sahuquillo
#My second bash script, intended to make a complex terminal calculator.

#Header of the script
print_header(){
	clear
	echo -e "\n\t|======== calcSword - Command ========|"
	echo -e "\t| -To exit write 'q/Q/exit'"
	echo -e "\t| -Basic operations mode: 'basicOp'"
	echo -e "\t|=====================================|\n"
}
print_header

#Variables
input_command=""
basicOp_path="./calcSword_functions/basic_op.sh"

#Main loop of the console script
while [ 1 ]; do

	#Prints the prompt and read the line
	read -p "cS-[Command]>> " input_command

	#Conditioin to close the script -- Pressing q/Q/exit 
	if [[ $input_command = "q" ]] || [[ $input_command = "Q" ]] || [[ $input_command = "exit" ]]; then
		#Exits the script after clearing the console
		clear
		exit
	fi

	#Basic operations mode
	if [[ $input_command = "basicOp" ]]; then
		$basicOp_path
		print_header
	fi
 
done


