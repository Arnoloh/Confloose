
# OCR

**Table of Contents**
1. [Neural Network](#Neural-Network)

2. [Solver](#Solver)

3. [Détection de ligne et découpage](#Détection-de_ligne_et_découpage)

4. [Image Processing](#Image_Processing)




## Neural Network

## Solver
#####Commandes à exécuter :

 - make
 	- Compile le programme et crée un éxécutable.
 - ./solver "gridXX" [-p]
 	- Exécute le solver avec le fichier gridXX. XX étant le numéro de la grille.
	Avec ou sans "-p" pour afficher la grille vide et résolu dans le terminal.
 - make clean
 	- Supprime l'éxécutable.
	
#####Ce qui va se passer:
- Résolution de la grille numéro XX.
- Sauvegarde de la grille résolu dans un nouveau fichier nommé gridXX.result

## Détection de ligne et découpage
 
#####Commandes à exécuter :
- make
	- Compile les fichiers .c et crée un fichier main.
- ./main "file path"
	- Exécute le fichier main.
- make clean
	- Supprimer le fichier main
- make delete
	- Supprime toutes les sous-cases crées (tous les fichiers bmp)


#####Ce qui va se passer  :
- Affichage de la nouvelle image avec suppression des lignes (repassées en blanc). La fenêtre peut être redimensionnée.
- Enregistrement de toutes les cases dans le dossier au format bmp.
## Image Processing

