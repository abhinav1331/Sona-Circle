<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$feedID = $_GET['feedID'];
$currentTime = time();


if($userID == "" || $feedID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$myTable = $wpdb->get_results("SELECT * FROM `im_feeds`  WHERE `id` = $feedID");
		if(empty($myTable)) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Feed");
		} else {
			$description = $myTable[0]->description;
			$image_url = $myTable[0]->image_url;
			$wpdb->insert( 'im_feeds', array(
			'user_id' => $userID,
			'description' => $description,
			'image_url' => $image_url,
			'status' => 1,
			'post_created' => $currentTime)
		);
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	} 
}
echo json_encode($json);