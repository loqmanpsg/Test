#!/bin/bash

# Tester le point de terminaison /chat de l'API FastAPI
RESPONSE=$(curl -X POST http://localhost:8000/chat -H "Content-Type: application/json" -d '{"prompt": "Qu\'est-ce qu\'un LLM ?"}')

# Afficher la réponse
echo "Réponse du serveur : $RESPONSE"
