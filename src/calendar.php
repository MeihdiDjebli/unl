<?php
require_once 'model/event.php';
require_once 'model/team.php';
?>
<!DOCTYPE html>

<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>UNL - Calendrier</title>

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
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Rechercher" aria-label="Search">
            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Rechercher</button>
        </form>
    </div>
</nav>

<main role="main" class="container" style="margin-top: 56px;">
    <h1>Calendrier</h1>
</main><!-- /.container -->
<script src="js/jquery-3.4.1.min.js"></script>
</body></html>