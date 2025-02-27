# Définit l'image de base - on utilise OpenJDK 17 en version "slim" 
# (version allégée qui contient uniquement le nécessaire)
FROM openjdk:17-slim

# Crée un volume temporaire pour stocker les données non persistantes
# Utile pour les fichiers temporaires de l'application
VOLUME /tmp

# Copie le fichier JAR de votre application (qui sera créé par Maven dans le dossier target)
# vers un fichier nommé app.jar dans le conteneur
COPY target/*.jar app.jar

# Définit la commande qui sera exécutée au démarrage du conteneur
# Ici, on lance l'application Java avec le fichier JAR
ENTRYPOINT ["java","-jar","/app.jar"] 