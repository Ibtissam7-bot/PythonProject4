'''
First_dict = { "Appareil": "Laptop", "Marque": "IBM", "Carte mère": "MSI Z490", "Carte Graphique":"GeForce RTX 3070", "RAM": "16G", "Processeur": "Intel core i7-G11", "SSD": "1 To" }
#Corriger la valeur associée à la clé "RAM" pour qu’elle devienne "32G".
First_dict.update(RAM="32G")
print(First_dict)
#Afficher la liste des clés du dictionnaire
print(f"La liste des clés du dictionnaires est : {First_dict.keys()}")
# La liste des valeurs
print(f"La liste des valeurs est : {First_dict.values()}")
#La liste des paires clé-valeur
print(f"La liste des paires clé-valeur est : {First_dict.items()}")
#Inverser les paires "Processeur" : "Intel core i7-G11" et "Carte Graphique" : "GeForce RTX 3070"
First_dict["Processeur"],First_dict["Carte Graphique"]= First_dict["Carte Graphique"], First_dict["Processeur"]
#Ajouter la paire clé-valeur suivante : "Système d’exploitation": "Windows 10"
First_dict["Systeme d'exploitation"] = "Windows 10"
print("Dictionnaire final: ", First_dict)
'''
'''
#Partitionnement des étudiants
notes_eleves = { "Amine": 15.5, "Yassine": 19.0, "Reda": 14.2, "Malak": 8.7, "Manal": 20.0, "Ahmed": 7.5,"Saad": 11.3, "Hannae": 9.8 }
etudiantAdmis={}
etudiantNonAdmis={}
for eleve, note in notes_eleves.items():
    if note>=10:
        etudiantAdmis[eleve]=note
    else: etudiantNonAdmis[eleve]=note
print("Admis:", etudiantAdmis)
print("Non admis:", etudiantNonAdmis)
'''
#Mise à Jour de Dictionnaires
'''
notes_eleves = { "Amine": 15.5, "Yassine": 19.0, "Reda": 14.2, "Malak": 8.7, "Manal": 20.0, "Ahmed": 7.5,"Saad": 11.3, "Hannae": 9.8 }
First_dict = { "Appareil": "Laptop", "Marque": "IBM", "Carte mère": "MSI Z490", "Carte Graphique":"GeForce RTX 3070", "RAM": "16G", "Processeur": "Intel core i7-G11", "SSD": "1 To" }
capitals ={"USA":"Washington","India":"Delhi"}
New_dic={}
New_dic.update(notes_eleves)
New_dic.update(First_dict)
New_dic.update(capitals)
print("Dictionnaire fusionné:", New_dic)

# Conversion de Deux Listes en Dictionnaire
key = ["nom", "âge", "ville"]
values = ["Hind", 16, "Maroc"]
new=zip(key,values)
Dic=dict(new)
print(Dic) 

#Tri d'un Dictionnaire par Valeur
notes_eleves = { "Amine": 15.5, "Yassine": 19.0, "Reda": 14.2, "Malak": 8.7, "Manal": 20.0, "Ahmed": 7.5,"Saad": 11.3, "Hannae": 9.8 }
Listy=notes_eleves.items()
N_DIC=dict(sorted(Listy, key = lambda item : item[1]))
print(N_DIC)
print(Listy)
#Challenge : Manipulation de tuples 
'''
#Challenge : Manipulation de tuples
etudiant_info=("Yasmine", 22, "Informatique", 17.4)
print(f"Prénom:{etudiant_info[0]}")
print(f"Age:{etudiant_info[1]}")
print("Filière:", etudiant_info[2])
print(f"Moyenne générale:{etudiant_info[3]}")
########
try:
    etudiant_info[2]="Maths"
except TypeError as e:
    print("Erreur: ", e,"-Les tuples ne peuvent pas etre modifiés!")
#######
print("Prénom et age",etudiant_info[:2])
#######
Mention=("Très bien",2024)
nouveau_tuple= etudiant_info+ Mention
print("Tuple final:", nouveau_tuple)
