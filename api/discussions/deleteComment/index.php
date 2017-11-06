<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$objID = $_GET['objID'];

if($userID == ""|| $objID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$myTable = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `id` = $objID");
		if(empty($myTable)) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Comment");
		} else {
			
			$feed_id = $myTable[0]->feed_id;
			$im_feeds = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $feed_id");
			$authorID = $myTable[0]->user_id;
			$feedAuthor = $im_feeds[0]->user_id;
			if($authorID == $userID || $feedAuthor == $userID) {
				$wpdb->query("DELETE FROM `im_discussion_comment` WHERE `id` = $objID");
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "Comment not belongs to you");
			}
			
		}
	}
}
echo json_encode($json);