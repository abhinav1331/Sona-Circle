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
			$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $feedID AND `user_id` = $userID");
			if($countt == 0) {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `id` = $feedID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has liked on your Feed";
				$wpdb->insert( 'im_feeds_like', array(
					'feed_id' => $feedID,
					'user_id' => $userID,
					'created_at' => $currentTime)
				);
				if($getAuthor != $userID) {
					sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				}
			} else {
				$wpdb->query("DELETE FROM `im_feeds_like` WHERE `feed_id` = $feedID AND `user_id` = $userID");
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	}
}
echo json_encode($json);