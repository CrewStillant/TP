# Etape 1
Pour trouver le Host OS j'utilise la commande *systeminfo* qui me permet d'avoir les infos générales de mon pc 
j'obtiens donc :
 
* nom de machine 
* OS et version 
* mon architecture de processeur (64-bit)
* ma quantité de RAM
* La marque de mon processeur et son modèle 

Afin d'avoir des infos supplémentaire sur ma RAM j'utilise la commande *wmic memorychip list full* .
Ensuite pour trouver les informations de mon disque dur j'utilise la commande *diskpart* qui m'ouvre une autre fenêtre de commande.
Dans cette nouvelle fenêtre je sélectionne mes 2 disques durs :
*sel disk 0
*sel disk 1  
# Etape 2
