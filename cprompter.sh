#!/usr/bin/bash

#	By Kevin J Figueroa
# 	Just Personalizing my prompt line

cat<<EOF
it's just to modify and/or customize the prompt line with a name and currently visited directory.
...
For get a new name, pleaase insert 
EOF

echo "For get a new name for your prompt, please insert it: "; read name

echo -e "\n\n#Just Personalizing my prompt line" >> ~/.bashrc

echo "PS1='\[\033[00;97;101m\]Kevin \[\033[00;33m\]\033[00;97;100m\]\[\033[00;97;100m\][\W]\[\033[00m\]$ '" >> ~/.bashrc

echo "$(source ~/.bashrc)"
echo -e "\nmaybe its necessary to relogin your user in order to get the changes..\n"

exit 0
