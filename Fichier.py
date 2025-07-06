#Extraction et Traitement de Fichiers
import os
from pathlib import Path
import os
'''
# 1. 
fichiers = []
for f in os.listdir('.'): 
    if f.endswith('.txt'):
        fichiers.append(f)

# 2. 
texte_final = ""
for nom in fichiers:
    with open(nom, 'r', encoding='utf-8') as f:
        contenu = f.read()
        texte_final += contenu + "\n"  

print(texte_final)

# Vérifier si un fichier existe et l’afficher
fichier = "1.txt"
# 1.
if os.path.exists(fichier):
# 2.
    with open(fichier, 'r', encoding='utf-8') as f:
        print(f.read())
else:
    print(f"Erreur : {fichier} n'existe pas.")
  
#Copie Sélective de Fichiers
import shutil
import shutil
dossier_source = "."  # Dossier courant
dossier_destination = "g"
# 1.
os.makedirs(dossier_destination, exist_ok=True)
# 2.
for fichier in os.listdir(dossier_source):
    if fichier.endswith('.txt'):
        source = os.path.join(dossier_source, fichier)
        destination = os.path.join(dossier_destination, fichier)
        shutil.copy(source, destination)
        print(f"✅ {fichier} copié vers {dossier_destination}/")
#Challenge : Création de Répertoires
import os
root = "Projet_IA"
subdos = ["data", "models",
           "results", "notebooks"]
if not os.path.exists(root):
    os.mkdir(root)

for name in subdos:
    path = os.path.join(root, name)
    if not os.path.exists(path):
        os.mkdir(path)
        '''
#Challenge : Écriture de Fichiers
lignes = ["Ligne 1 : Bonjour", "Ligne 2 : Monsieur", "Ligne 3 : Fin du fichier"]
fichier = open("mon_fichier.txt", "w", encoding="utf-8")
for ligne in lignes:
    fichier.write(ligne + "\n")
fichier.close()
with open("mon_fichier.txt", "r", encoding="utf-8") as f:
    contenu = f.read()
    print(contenu)

