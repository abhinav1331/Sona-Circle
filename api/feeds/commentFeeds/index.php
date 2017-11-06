<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);


$userID = $data_body['userID'];
$feedID = $data_body['feedID'];
$comment = $data_body['comment'];
$currentTime = time();

if($userID == ""|| $feedID == ""|| $comment == "") {
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
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `id` = $feedID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has commented on your Feed";
			$wpdb->insert( 'im_feed_comment', array(
				'feed_id' => $feedID,
				'user_id' => $userID,
				'user_comment' => $comment,
				'created_at' => $currentTime)
			);
			
			if($getAuthor != $userID) {
				sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				NotificationSend($userID , $getAuthor , $messageMy,0 ,$feedID);
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	}
}
echo json_encode($json);