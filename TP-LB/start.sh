#!/bin/bash

# a) Construire l'image
docker build -t im-nginx-lb tp-A

# b) Créer deux sous-dossiers shared1 et shared2
mkdir shared1 shared2

# c) Placer deux fichiers index.html
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

# d) Lancer deux conteneurs nginx
docker run -d --name nginx1 -p 81:80 \
	-v $(pwd)/shared1:/usr/share/nginx/html \
	nginx:latest

docker run -d --name nginx2 -p 82:80 -v $(pwd)/shared2:/usr/share/nginx/html nginx

# e) Lancer un conteneur nginx-lb
docker run -d --name lb -p 83:80 im-nginx-lb
