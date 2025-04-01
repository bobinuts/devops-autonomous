# Utiliser une image de base Python (ici 3.13.2, ou une autre version compatible)
FROM python:3.13.2-slim

# Définir le répertoire de travail dans le container
WORKDIR /app

# Copier le fichier des dépendances et installer les requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source
COPY src/ ./src/

# Exposer le port sur lequel l'application écoute
EXPOSE 8080

# Commande pour lancer l'application
CMD ["python", "src/app.py"]
