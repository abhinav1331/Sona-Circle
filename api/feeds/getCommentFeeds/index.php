<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$feedID = $_GET['feedID'];
$currentTime = time();

if($userID == ""|| $feedID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds` WHERE `id` = $feedID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Feeds");
		} else {
			$getRes = $wpdb->get_results("SELECT * FROM `im_feed_comment` WHERE `feed_id` = $feedID ORDER BY `id` DESC");
			foreach ($getRes as $key => $value) {
				$name = get_user_meta($value->user_id , "first_name" , true);
				$profession = get_user_meta($value->user_id , "profession" , true);
				$userImageUrl = get_user_meta($value->user_id , "userImageUrl" , true);

				$myArray[] = array("requestID" => $value->id ,"userID" => $value->user_id , "name" => $name , "profession" => $profession , "userImageUrl" => $userImageUrl, "comment" => $value->user_comment , "time"=>$value->created_at);
			}
			if(empty($myArray)) {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			} else {
				$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
			}
		}
	}
}
echo str_replace("null",'""',json_encode($json));