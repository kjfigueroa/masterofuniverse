#!/usr/bin/bash

# By Kevin J. Figueroa : 2023-01-16
# getting new codes for laboratory

#just for print some styles in our outputs...
tab="$(printf '\t')"
bd=$(tput bold)
nobd=$(tput sgr0)
r=$(printf '\e[31m')
noc=$(printf '\e[0m')

ver1 (){
    echo -e "\n\tVerifying if this machine currently have ${r}GIT${noc} installed...."
    gitpath="/usr/bin/git"
    verInGIT=$(which git)
    if [ "$verInGIT" == "$gitpath" ]; then
        echo -e "\n\t${r}GIT${noc} is already installed"
    else
        echo -e "\n"
        read -s -p "Please, for go foward with installing GIT, \n insert the sudo passwd:" passwd
        echo "$passwd" | sudo -S dnf update
        echo "$passwd" | sudo -S dnf -y install git
    fi    
    read -n 1 -s -r -p "Press [ENTER] to continue..."
}

echo -e "";ver1;echo -e"\n"
mkdir -p $HOME/code-hook-box
git clone https://github.com/kjfigueroa/masterofuniverse.git $HOME/code-hook-box/
chmod +x $HOME/code-hook-box/*

cat << EOF

{tab}the code was allocated in ${bd}${r}$(echo "$HOME/code-hook-box")${noc}${nobd}
EOF

exit 0
