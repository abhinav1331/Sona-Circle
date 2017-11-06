<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$quickBloxID = $_GET['quickBloxID'];
$quickBloxPaswd = $_GET['quickBloxPaswd'];
$myArray = array();
if($userID == "" || $quickBloxID == "" || $quickBloxPaswd == "") {
	$json = array("success" => 0, "result" => 1, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
		update_user_meta( $userID, 'quickBloxPaswd', $quickBloxPaswd );
		update_user_meta( $userID, 'quickBloxID', $quickBloxID );
		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
	}
}
echo json_encode($json);