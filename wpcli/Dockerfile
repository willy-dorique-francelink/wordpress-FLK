FROM wordpress:cli

# Installer l'outil make
USER root
RUN apk add --no-cache make

# Faites attendre dockers pour que les dépendances des conteneurs soient prêtes
# Ajouter le script wait à l'image
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

# Ajouter le Makefile au répertoire des scripts
ADD Makefile entrypoint.sh /scripts/
RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT [ "/scripts/entrypoint.sh" ]
USER 33:33
CMD ["wp", "shell"]
