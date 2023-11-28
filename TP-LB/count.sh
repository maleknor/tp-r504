#!/bin/bash

# Réinitialiser les compteurs
count1=0
count2=0

# Faire 500 appels et compter les réponses
for ((i=0; i<500; i++)); do
  response=$(curl -s http://localhost:83)
  if [[ $response == *"Hello 1"* ]]; then
    ((count1++))
  elif [[ $response == *"Hello 2"* ]]; then
    ((count2++))
  fi
done

# Afficher les résultats
echo "Nombre de réponses de nginx1 : $count1"
echo "Nombre de réponses de nginx2 : $count2"
