<?php

require_once 'db.php';

/**
 * Retourne toutes les équipes sous la forme d'un tableau associatif
 */
function findAll(): array
{
    $result = query("SELECT * FROM team ORDER BY name ASC");
    return $result->fetch_all(MYSQLI_ASSOC);
}

/**
 * Retourne l'équipe qui a pour ID $id sous la forme d'un tableau associatif
 */
function findTeamById(int $id): ?array
{
    $result = query("SELECT * FROM team WHERE id = $id");
    return $result->num_rows ? $result->fetch_array(MYSQLI_ASSOC) : null;
}

function findTeamByNameLike(string $name): array
{
    $formatedName = escape($name);
    $result = query("SELECT * FROM team WHERE name LIKE '%$formatedName%' ORDER BY name ASC");
    return $result->fetch_all(MYSQLI_ASSOC);
}