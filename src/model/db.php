<?php

function connect(): mysqli
{
    return new mysqli('db', 'root', 'root', 'unl');
}

function query(string $sql): mysqli_result
{
    $cnx = connect();
    $result = $cnx->query($sql);
    $cnx->close();
    return $result;
}

function escape(string $str): string
{
    $cnx = connect();
    $espacpedStr = $cnx->escape_string($str);
    $cnx->close();
    return $espacpedStr;
}