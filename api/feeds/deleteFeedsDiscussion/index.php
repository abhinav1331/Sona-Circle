<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$objID = $_GET['objID'];
$selector = $_GET['selector'];

if($userID == ""|| $objID == ""|| $selector == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		if($selector == "feeds") {
			$table = "im_feeds";
			$message = "Feed";
		} else {
			$table = "im_discussion";
			$message = "Discussion";
		}
		$myTable = $wpdb->get_results("SELECT * FROM $table WHERE `id` = $objID");
		if(empty($myTable)) {
				$json = array("success" => 0, "result" => 0, "error" =>  "Invalid ".$message);
		} else {
			if($myTable[0]->user_id == $userID) {
				$wpdb->query("DELETE FROM `$table` WHERE `id` = $objID");
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  $message." not belongs to you");
			}
		}
	}
}
echo json_encode($json);