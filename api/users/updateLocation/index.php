<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$latitude = $_GET['latitude'];
$longitude = $_GET['longitude'];
$myArray = array();
if($userID == "" || $latitude == "" || $longitude == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0 , "error" =>  "Invalid User");
	} else {
			update_user_meta( $userID, 'latitude', $latitude );
			update_user_meta( $userID, 'longitude', $longitude );
			
			$json = array("success" => 1 , "result" => 1 , "error" => "No Error Found");
	}
}
echo json_encode($json);