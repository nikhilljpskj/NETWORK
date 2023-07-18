# !/bin/bash
read -p 'Username: ' user
read -sp 'Password: ' pass
echo -e "\n"
read -p "Enter username: " cUser
read -sp "Enter password: " cPass

if (( $cUser == $user && $cPass == $pass ))
then
	echo -e "\nWelcome $user! You are Sucessfully logged in\n"
else
	echo -e "\n Login attempt UNSUCCESSFULL\n"
fi

