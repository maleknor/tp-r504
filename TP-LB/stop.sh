#!/bin/bash

# Arrêter et supprimer les conteneurs
docker stop nginx1 nginx2 lb
docker rm nginx1 nginx2 lb

rm -r shared1 shared2
