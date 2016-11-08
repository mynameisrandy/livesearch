<?php
	$q = $_GET['custid'];
	require_once("includes/connect.php");
	$sql = "SELECT * FROM tbl_pokemons, tbl_abilities, tbl_types WHERE tbl_abilities.ability_id = tbl_pokemons.pokemon_abilities AND tbl_types.type_id = tbl_pokemons.pokemon_type AND pokemon_id =".$q; 
	$result = mysqli_query($connection, $sql);
	$row = mysqli_fetch_array($result); // featch a result row as an associaatve array

	echo "<div id='pokemonCont'>
			<div class='row'>
				<div class='small-12 medium-12 large-6 columns pokemonIMG'>"
					.'<img src="img/'.$row['pokemon_img'].'">'.
				'</div>'

				."<div class='small-12 medium-12 large-6 columns pokemonInfo'>"

					."<div class='nameArea'> 
						<h1>".$row['pokemon_name']."</h1>
					 </div>"

					."<span class='types'><p>Type: ".$row['type_name']." - "
					."Abilities: ".$row['ability_name']."</p></span>"
					."<span class='types'><p>".$row['pokemon_bio']."</p></span>"."

					<table class='stats'>
						<tr>
							<th>HP</th>
							<th>Attack</th>
							<th>Defense</th>
						</tr>
						<tr>
							<td>".$row['pokemon_hp']."</td>
							<td>".$row['pokemon_attack']."</td>
							<td>".$row['pokemon_def']."</td>
						</tr>
						<tr>
							<th>Sp.Attack</th>
							<th>Sp.Defense</th>
							<th>Speed</th>
						</tr>
						<tr>
							<td>".$row['pokemon_sp_attack']."</td>
							<td>".$row['pokemon_sp_def']."</td>
							<td>".$row['pokemon_speed']."</td>
						</tr>
					</table>
				</div>
			</div>
		</div>";
?>