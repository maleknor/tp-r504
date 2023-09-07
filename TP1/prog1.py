import fonctions 

while True:
	try:
		# Demander à l'utilisateur de saisir un nombre
		v1 = int(input("Veuillez saisir un nombre : "))
	
		# Calculer la puissance du nombre
		v2 = int(input("Entrez l'exposant : ")) 
	
		# Afficher le résultat
		resultat = fonctions.puissance(v1, v2) 
		print(f"{v1} élevé à la puissance {v2} est : {resultat}")
	
	except ValueError:
	
		print("Erreur : Entrez un nombre entier svp")
