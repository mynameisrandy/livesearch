<?php
	// Create a variable called $q set it to equal the variable $_GET['searchstring']
	$q = $_GET['searchstring']; // $_GET variable is used to collect values in form with method="get"

	if($q != NULL) { // $q is not eual to null then run the code
		require_once("includes/connect.php");
		$sql = "SELECT * FROM tbl_pokemons WHERE pokemon_name LIKE '".$q."%'"; // selecting all from customers tables
		$result = mysqli_query($connection, $sql); // sends a unqiue query to the currently active database on the server
		$numrows = mysqli_num_rows($result); // get number of rows in $result
		echo "<div class='small-12 columns results'>";
		// While Loop
		if ($numrows > 0) {
					while($row = mysqli_fetch_array($result)) { 
			print "<p><a href=\"#\" onclick=\"displayInfo(".$row['pokemon_id'].")\">".$row['pokemon_name']."</p>";	
		} 
			echo "</div>";
		} else {
			print "<p>Sorry No Results</p>";
		}

	} 
?>