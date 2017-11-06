<?php 
include("../../../wp-config.php");
global $wpdb;


$userID = $_GET['userID'];
$commentID = $_GET['commentID'];
$status = $_GET['status'];
$currentTime = time();

if($userID == ""|| $commentID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		
		if($status == 'like')
		{
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_comment` WHERE `id` = $commentID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid comment");
		} else {
			$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_like_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
			if($countt == 0) {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `id` = $commentID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has liked on your comment";
				$wpdb->insert( 'im_dis_like_com', array(
					'comment_id' => $commentID,
					'user_id' => $userID)
				);
				$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				if($countt != 0) {
					$wpdb->query("DELETE FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				}

				if($getAuthor != $userID) {
					sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				}
			} else {

				$wpdb->query("DELETE FROM `im_dis_like_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	}
	if($status == 'unlike'){
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_comment` WHERE `id` = $commentID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Feeds");
		} else {
			$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
			if($countt == 0) {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `id` = $commentID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has unliked your Comment";
				$wpdb->insert( 'im_dis_unlike_com', array(
					'comment_id' => $commentID,
					'user_id' => $userID)
				);

				$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_like_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				if($countt != 0) {
					$wpdb->query("DELETE FROM `im_dis_like_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				}

				if($getAuthor != $userID) {
					sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				}
			} else {

				$wpdb->query("DELETE FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
			}
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		}
	  }
	}
}
echo json_encode($json);