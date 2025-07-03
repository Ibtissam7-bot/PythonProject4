from abc import ABC, abstractmethod
#une classe CompteBancaire

class CompteBancaire:
    def __init__(self,nom_proprietaire,solde=0.0):
        self.nom= nom_proprietaire
        self.solde= solde
    def deposer(self,montant):
        self.solde=self.solde+montant
    def retirer(self,montant):
        if montant <= self.solde :
            self.solde=self.solde-montant
        else:
            print("L'opération ne peut s'éffectuer")
    def afficher_solde(self):
        print(f"Le nom du propriétaire est {self.nom}, et son solde est {self.solde}")

C1=CompteBancaire("Ibtissam",20)

C1.deposer(200)
C1.retirer(20)
C1.afficher_solde()

#Système de gestion d’école
class Personne(ABC):
    def __init__(self,nom,prénom,age):
        self.n=nom
        self.p=prénom
        self.a=age
    @abstractmethod
    def afficher_infos(self):
        pass
class Etudiant(Personne):
    def __init__(self,nom,prénom,age,matricule):
        super().__init__(nom,prénom,age)
        self.m= matricule
        self.notes=[]

    def ajouter_note(self,note):
        if 0<= note <=20:
           self.notes.append(note)
        else :
            print("Note invalide (doit être entre 0 et 20)")

    def moyenne(self):
        return sum(self.notes) / len(self.notes)

    def afficher_infos(self):
        print(f"Étudiant: {self.p} {self.n}")
        print(f"Matricule: {self.m}")
        print(f"Moyenne: {self.moyenne():.2f}")


class Enseignant(Personne):
    def __init__(self, nom, prenom, age, specialite, salaire):
        super().__init__(nom, prenom, age)
        self.spe = specialite
        self._sal = salaire

    @property
    def salaire(self):
        return self._sal

    @salaire.setter
    def salaire_setter(self,valeur):
        self._sal=valeur


    def afficher_infos(self):
        print(f"Enseignant: {self.p} {self.n}")
        print(f"Spécialité: {self.spe}")
        print(f"Salaire: {self.salaire}")


class Ecole:
    def __init__(self, nom):
        self.nom = nom
        self.liste_etudiants = []
        self.liste_enseignants = []

    def ajouter_etudiant(self, etudiant):
        self.liste_etudiants.append(etudiant)

    def ajouter_enseignant(self, enseignant):
        self.liste_enseignants.append(enseignant)

    def afficher_tous_les_membres(self):
        print(f"\nMembres de l'école {self.nom}:")
        for etudiant in self.liste_etudiants:
            etudiant.afficher_infos()
            print("---")
        for enseignant in self.liste_enseignants:
            enseignant.afficher_infos()

ecole = Ecole("Python High School")

etudiant1 = Etudiant("Benis", "Sara", 18, "3001")
etudiant1.ajouter_note(15)
etudiant1.ajouter_note(12)

enseignant1 = Enseignant("Aichna", "Khadija", 35, "Informatique", 3000)

ecole.ajouter_etudiant(etudiant1)
ecole.ajouter_enseignant(enseignant1)
ecole.afficher_tous_les_membres()











