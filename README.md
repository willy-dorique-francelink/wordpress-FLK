# Méthode 1. Installation automatique + configuration manuelle
    Installation automatique de WordPress dans docker
    Trois lignes de commandes docker-compose:

    1 Construire des images d’applications docker
    2 Démarrer l’installation de wordpress en mode détaché
    3 Vérifier la disponibilité des services de docker WordPress
    docker-compose build
    docker-compose up -d 
    docker-compose run --rm healthcheck
    Expliquer les différentes options de docker-compose:

    -d: démarrer des conteneurs en option détachée
    --rm: retirer les conteneurs lorsqu’ils sont arrêtés
    Vous pouvez également utiliser les commandes de raccourci suivantes de make. Facile à utiliser sur les systèmes d’exploitation Unix (MAC et Linux)

    make install
    Les journaux de la console ressemblent à ceci:

    Log de la console

    Configuration manuelle de WordPress
    Naviguez sur http://127.0.0.1 ou http://localhost et suivez les instructions d’installation

    Définir la langue de WordPress
    Sélectionnez la langue de WordPress

    Créer un utilisateur administratif
    Créer un utilisateur administratif

    Succès
    Succès de l’installation

    Connectez-vous en tant qu’utilisateur administratif
    Connectez-vous en tant qu’admin

    Tableau de bord de l’administration
    Tableau de bord de l’administration