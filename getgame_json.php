<?php
error_reporting(0);

header('Content-Type: application/json');

require_once("includes/connect.php");

$array = array();

$q=$_GET['q'];

$sql = "SELECT * FROM tbl_gymleaders WHERE gymleader_id  =".$q;

$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)){

$json = array(
		'gymleaderIMG' => $row['gymleader_img'],
		'gymName' => "<div id='gameDesc'> <p>Name: ".$row['gymleader_name']." </p></div>",
		'hometown' => "<div id='gameDesc'> <p>Hometown: ".$row['gymleader_hometown']." </p></div>",
		'gymName1' => "<div id='gameDesc'> <p>Gym Name: ".$row['gymleader_gym']." </p></div>",
		'badgeIMG' => $row['gymleader_badgeIMG'],
		'badgeName' => "<div id='gameDesc'> <p>Badge Name: ".$row['gymleader_badgeName']."</p> </div>",
		'gender' => "<div id='gameDesc'> <p>Gender: ".$row['gymleader_gender']."</p> </div>",
	);
	array_push($array, $json);
}

echo json_encode($json, true);

?>
