<?php

// SETUP

define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASS", "root");
define("DB_NAME", "university");

// connessione
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Check connessione
if($conn-> connect_error) {
    die("Connection failed: $conn->connect_error");
}