
#!/bin/bash 

# Script de création d'utilisateur

#=========================================================
# VARIABLES
#=========================================================
addUsers=$*



#=========================================================
# FONCTION
#=========================================================
function checkArgument(){
    if [ -z "$addUsers" ]
    then
        echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit 1    
    fi
}

function creationUser(){
    useradd $user 
    grep $user /etc/passwd > /dev/null

    if [ "$?" -eq 0 ]
    then
        echo "L'utilisateur $user a bien été créé."
    else
        echo "Erreur à la création de l'utilisateur $user."
    fi
}


#=========================================================
# MAIN
#=========================================================

# Vérification si il y a des arguments
checkArgument


# Vérification et création de ou des utilisateurs
for user in $addUsers
do 
    grep "$user" /etc/passwd > /dev/null
    if [ "$?" -eq 0 ]
    then
        echo "L'utilisateur $user existe déjà."
    else
        creationUser
    fi
done


