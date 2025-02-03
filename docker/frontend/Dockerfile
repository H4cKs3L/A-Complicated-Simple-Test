# Utiliser l'image Node.js
FROM node:18

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json
COPY package.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet
COPY . .

# Exposer le port par défaut de React (3000)
EXPOSE 7003

# Lancer l'application React en mode développement
CMD ["npm", "start"]
