import numpy as np
#Analyse de Températures
''''
tableau=np.array([12,3,4,5,30,35,40])
temp_moy=np.mean(tableau)
temp_medi=np.median(tableau)
temp_ecart=np.std(tableau)
print(f"La moyene est : {temp_moy}")
print(f"La mediane est : {temp_medi}")
print(f"L'ecart type' est : {temp_ecart}")

#Normalisation de Données
tableau=np.array([12,3,4,5,30,35,40])
print(tableau)
new_tab= (tableau - np.mean(tableau))/np.std(tableau)
print(new_tab)


# Comparaison de Tableaux
tableau1=np.array([0,1,11,13,15])
tableau2=np.array([0,12,11,14,15])
ind_diff= np.where(tableau1 != tableau2)[0]

print(ind_diff)
for i in ind_diff:
    print(f"La valeur correspondante à l'indice {i}: Dans tableau1 {tableau1[i]}, Dans tableau2 {tableau2[i]}")
#Ou ( Deuxième méthode)
print(tableau1[ind_diff])
print(tableau1[ind_diff])

#Opérations Matricielles
Matrice1=np.array([[1,2],[3,4]])
Matrice2=np.array([[5,6],[7,8]])
Mult= np.matmul(Matrice1,Matrice2)
Trans1=np.transpose(Mult)
Inv=np.linalg.inv(Mult)
print("Matrice A:\n", Matrice1)
print("Matrice B:\n", Matrice2)
print("Produit matriciel C = A x B:\n", Mult)
print("Transposée de C:\n", Trans1)
print("Inverse de C:\n", Inv)
'''
tableau1=np.array([0,1,11,13,15])
tableau2=np.where(tableau1>4)
val_sele=tableau1[tableau2]
print(val_sele)









