<?php

require_once 'db.php';

/**
 * Retourne le match qui a pour ID $id sous le format d'un tableau associatif
 */
function findEventById(int $id): ?array
{
    $result = query("SELECT * FROM event WHERE id = $id");
    return $result->num_rows ? $result->fetch_array(MYSQLI_ASSOC) : null;
}

/**
 * Retourne tous les matchs de l'équipe qui a pour ID $id sous le format d'un tableau trié par date (ASC)
 */
function findEventsByTeamId(int $id): array
{
    $result = query("SELECT * FROM event WHERE local_team = $id OR away_team = $id ORDER BY start_at ASC");
    return $result->fetch_all(MYSQLI_ASSOC);
}

/**
 * Permet de récupérer tous les matchs terminés
 */
function findByFinished(): array
{
    $result = query("SELECT * FROM event WHERE local_score IS NOT NULL AND away_score IS NOT NLL");
    return $result->fetch_all(MYSQLI_ASSOC);
}