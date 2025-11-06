# Définit l'image de base pour la compilation
FROM maven:3.9.5-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

# Image finale pour l'exécution
# FROM openjdk:17-slim
FROM eclipse-temurin:17-jdk

# Crée un volume temporaire pour stocker les données non persistantes
# Utile pour les fichiers temporaires de l'application
VOLUME /tmp

# Copie le fichier JAR de votre application (qui sera créé par Maven dans le dossier target)
# vers un fichier nommé app.jar dans le conteneur
COPY --from=build /app/target/*.jar app.jar

# Définit la commande qui sera exécutée au démarrage du conteneur
# Ici, on lance l'application Java avec le fichier JAR
ENTRYPOINT ["java","-jar","/app.jar"] 