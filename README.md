# UNL

## Mise en place

1. Installer les sources sur votre machine ;
2. Lancer les conteneurs via la commande docker-compose ;

A savoir :

* Le serveur Apache est accessible via l'URL http://localhost. La version de PHP est la 8.1.
* Le serveur MySQL a pour host "db", utilisateur "root" et mot de passe "root".
* Le serveur PHPMyAdmin est accessible via l'URL http://localhost:8080.

## Travail à réaliser

L'UEFA Nations League (Ligue des Nations) est une compétition de football dont la saison 2022-23 a débuté le 3 juin 2022.

Vous devez terminer le site web qui permet de visualiser les données sur les équipes et les matchs de cette compétition.

### index.php

La page d'accueil doit afficher la liste des équipes. 

Chaque équipe doit être cliquable et pointer vers le script existant src/team.php.

#### Bonus

Le champ de recherche disponible sur cette page d'accueil doit permettre de filtrer la liste des équipes par nom. Le nom peut être exact ou partiel.

### team.php

La page de fiche d'équipe doit afficher la liste des matchs de l'équipe.

Un match doit comporter un maximum d'information. Exemple : France 0 - 1 Croatie (13/06/2022 à 20:45).
Les équipes du match doivent être cliquable et pointer vers ce même script (src/team.php).

### results.php

La page de résultat doit afficher la liste des matchs étant terminés.

Un match doit comporter un maximum d'information. Exemple : France 0 - 1 Croatie (13/06/2022 à 20:45).
Les équipes du match doivent être cliquable et pointer vers le script src/team.php.

#### Bonus

Le champ de recherche disponible sur cette page doit permettre de filtrer la liste des matchs par nom d'équipe. Le nom peut être exact ou partiel.

### calendar.php

La page de calendrier doit afficher la liste des matchs qui n'ont pas encore eu lieu.

Un match doit comporter un maximum d'information. Exemple : Croatie vs Danemark (13/09/2022 à 20:45).
Les équipes du match doivent être cliquable et pointer vers le script src/team.php.

#### Bonus

Le champ de recherche disponible sur cette page doit permettre de filtrer la liste des matchs par nom d'équipe. Le nom peut être exact ou partiel.
