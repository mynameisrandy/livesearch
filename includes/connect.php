<?php


// connect to database
$connection = new mysqli('localhost', 'randy065_KP4Wao', '1!Skyline', 'randy065_livesearch');

// Check connection
if ($connection->connect_error) {
	// Fail to Connect to the database
	echo ('Connect failed' . $connection->connect_error);
} else {
	// echo 'IM FREE';
}

?>