#!/usr/bin/bash

#	By Kevin J Figueroa
# 	Just Personalizing my prompt line

echo -e "\n\n#Just Personalizing my prompt line" >> ~./bashrc
echo "PS1='\[\033[00;97;101m\]Kevin \[\033[00;33m\]\033[00;97;100m\]\[\033[00;97;100m\][\W]\[\033[00m\]$ '" >> ~/.bashrc
exit 0
