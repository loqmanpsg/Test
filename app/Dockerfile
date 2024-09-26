# Utilise l'image de base Python
FROM python:3.9-slim

# Installe Nginx
RUN apt-get update && apt-get install -y nginx

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers requirements.txt et le code de l'application
COPY requirements.txt .  # Notez que nous ne devons pas ajouter "app/" ici
COPY . .  # Cela copie tout le contenu du dossier 'app'

# Installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port que l'application utilise
EXPOSE 8001

# Commande pour démarrer l'application FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
