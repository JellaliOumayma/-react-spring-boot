# Utilisation d'une image de base Java
FROM openjdk:17

# Répertoire de travail
WORKDIR /app
# Copier le fichier settings.xml dans le répertoire .m2 du conteneur

# Copier le fichier JAR de l'application Spring Boot dans le conteneur
COPY target/maven-wrapper.jar /app/application.jar


# Exposer le port sur lequel l'application Spring Boot fonctionne (par exemple, 8080)
EXPOSE 8081

# Commande pour lancer l'application Spring Boot
CMD ["java", "-jar", "application.jar"] 