<?php

$connect = mysqli_connect ( "localhost","root","root","crud");

if (!$connect) 
{
    echo 'Error connect to database!';
}
?>