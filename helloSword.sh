#! /bin/bash 
# Author: Antonio Carretero Sahuquillo
# My first bash script. Just a hello world with a few more options ;3

#Variables introducidas como argumentos
option1=$1
option2=$2
option3=$3

######################
### MASSIVE PRINTS ###
######################
#Help menu and header (full echo command)
h_menu()
{
	#Header of the help menu.
	echo -e -n "\t"
	echo -E "\/\/\/\/\/\/\/\/    /helloSword - help menu\    \/\/\/\/\/\/\/\/"
	echo -e -n "\t================================================================ \n"
	
	#Help option 
	echo -n -e "\t-h or --help:" 
	echo -e "\t Show the help menu, with all the available options and descriptions.\n"

	#Say my name
	echo -n -e "\t-smn or --say-my-name:"
  echo -e "\t Show the message with your user name."

	#Separator and linespace after menu 
	echo -n -e "\t================================================================ \n"	
	echo -e "\n\n"
}


###############################
### OPTIONS IMPLEMENTATIONS ###
###############################

#Help menu option
if [[ $option1 = "-h" ]] || [[ $option1 = "--help" ]] ; then 

	#Call h_menu() function to print the help menu
	echo -n -e "\n"
	h_menu

	#Exits the script
	exit 
fi


#Say my name option
if [[ $option1 = "-smn" ]] || [[ $option2 = "-smn" ]] || [[ $option1 = "--say-my-name" ]] || [[ $option2 = "--say-my-name" ]]; then
	
	#Prints the message using the value returned from the whoami command 
	echo -e "\n /\/\Hello $(whoami)!/\/\ \n"
	
	#Exits the script 
	exit
fi


#No option set 
echo -e "\n /\/\Hello Sword!/\/\ \n"
exit 

