<?php

require_once 'model/team.php';
require_once 'model/event.php';

if (!isset($_GET['id'])) { // Si le paramètre GET id n'est pas fourni alors on quitte cette page pour afficher index.php
    header('location: index.php');
    exit();
}

// L'équipe est récupérée dans un tableau assocatif
$team = findTeamById($_GET['id']);

if (is_null($team)) { // Si l'équipe n'existe pas alors on quitte cette page pour afficher index.php
    header('location: index.php');
    exit();
}

?>
<!DOCTYPE html>

<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>UNL - Equipe "<?=$team['name']?>"</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">Ligue des Nations</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu" aria-controls="menu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon">⚽</span>
    </button>

    <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Saison 2022-23 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="calendar.php">Calendrier</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="results.php">Résultats</a>
            </li>
        </ul>
    </div>
</nav>

<main role="main" class="container" style="margin-top: 56px;">
    <h1>Les matchs de l'équipe de <?=$team['name']?></h1>
</main><!-- /.container -->
<script src="js/jquery-3.4.1.min.js"></script>
</body></html>