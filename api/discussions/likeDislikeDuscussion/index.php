<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$discussionID = $_GET['discussionID'];
$status = $_GET['status'];
$currentTime = time();

if($userID == ""|| $discussionID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		
		if($status == 'like')
		{
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion` WHERE `id` = $discussionID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Feeds");
		} else {
			$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
			if($countt == 0) {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $discussionID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has liked on your Discussion";
				$wpdb->insert( 'im_discussion_like', array(
					'dis_id' => $discussionID,
					'user_id' => $userID,
					'created_ad' => $currentTime)
				);
				$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $discussionID AND `user_id` = $userID"); 
				if($countt != 0) {
					$wpdb->query("DELETE FROM `im_discussion_unlike` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
				}

			if($getAuthor != $userID) {
				sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
			}
			} else {

				$wpdb->query("DELETE FROM `im_discussion_like` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	}
	if($status == 'unlike'){
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion` WHERE `id` = $discussionID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Feeds");
		} else {
			$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
			if($countt == 0) {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $discussionID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has unliked on your Discussion";
				$wpdb->insert( 'im_discussion_unlike', array(
					'dis_id' => $discussionID,
					'user_id' => $userID,
					'created_at' => $currentTime)
				);
				$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $discussionID AND `user_id` = $userID"); 
				if($countt != 0) {
					$wpdb->query("DELETE FROM `im_discussion_like` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
				}
			if($getAuthor != $userID) {
				sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
			}
			} else {

				$wpdb->query("DELETE FROM `im_discussion_unlike` WHERE `dis_id` = $discussionID AND `user_id` = $userID");
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	  }
	}
}
echo json_encode($json);