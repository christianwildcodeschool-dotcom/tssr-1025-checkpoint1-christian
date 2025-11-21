# PseudoCode du script addUser.sh

#### Vérification des arguments
```
Si argument = FAUX  
    Retourner messageErreur 
    STOP  
Sinon  
    Continuer  
Fin si  

#### Vérification Utilisateur et création utilisateurs
Pour utilisateur Dans argument
Faire   
    Si utilisateur = VRAI  
    Alors  
        Retourner messageUtilisateurExiste  
    Sinon  
        créerUtilisateur  
        Si créérUtilisateur = VRAI  
            retourner messageUtilisateurCréer  
        Sinon  
            Retourner messageErreurCréationUtilisateur  
        Fin si  
    Fin si  
Fin pour
```

