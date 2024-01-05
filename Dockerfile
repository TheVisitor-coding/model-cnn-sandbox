FROM ubuntu:latest

# Installez Python et ses dépendances
RUN apt install python3 python3-pip

# Répertoire de travail
WORKDIR /usr/src/app

# Copiez le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installez les dépendances du projet
RUN pip3 install tensorflow keras

# Copiez le reste des fichiers dans le conteneur
COPY . .

# Exposez le port 5000
EXPOSE 5000
