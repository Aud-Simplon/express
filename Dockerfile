FROM node
LABEL maintainer="root"
# Création du répertoire de travail
WORKDIR /usr/src/app
# Installation des dépendances
COPY package.json .
RUN npm install
# Copie du code à l’intérieur du conteneur pour pouvoir l’utiliser ensuite
COPY server.js .
# Ouverture (ou exposition) du port 8080 pour pouvoir accéder au serveur à partir de la machine hôte
EXPOSE 8080
# Démarrage du serveur
CMD [ "node", "server.js" ]
