<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);


$userID = $data_body['userID'];
$discussionID = $data_body['discussionsID'];
$comment = $data_body['userComment'];
$currentTime = time();

if($userID == ""|| $discussionID == ""|| $comment == "") {
	$json = array("success" => 0, "result" => "null", "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
		$counttFeeds = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion` WHERE `id` = $discussionID");
		if($counttFeeds == 0) {
			$json = array("success" => 0, "result" => "null", "error" =>  "Invalid Discussion");
		} else {
			$getFeedAuthor = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $discussionID");
			$getAuthor = $getFeedAuthor[0]->user_id;
			$firebaseTokenId = get_user_meta($getAuthor , "firebaseTokenId" , true);
			$name = get_user_meta($userID , "first_name" , true);
			$messageMy = $name." has commented on your Discussion";
			$wpdb->insert( 'im_discussion_comment', array(
				'dis_id' => $discussionID,
				'user_id' => $userID,
				'user_comment' => $comment,
				'created_at' => $currentTime)
			);
			$lastid = $wpdb->insert_id;
			$myCommentRes = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `id` = $lastid");
			foreach ($myCommentRes as $key => $myCommentRess) {
				$commentID= $myCommentRess->id;
				$commentUserID= $myCommentRess->user_id;
				$user_comment= $myCommentRess->user_comment;
				$created_at= $myCommentRess->created_at;
				$oppUserImageUrl = get_user_meta($commentUserID , "userImageUrl" , true);
				$first_name = get_user_meta($commentUserID , "first_name" , true);
				$im_dis_like_com = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_like_com` WHERE `comment_id` = $commentID");
				$im_dis_unlike_com = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID");


				$comIsLiked = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_like_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				$comIsUnliked = $wpdb->get_var("SELECT count(`id`) FROM `im_dis_unlike_com` WHERE `comment_id` = $commentID AND `user_id` = $userID");
				$myCommentArray = array("commentID" => $commentID ,"userID" => $commentUserID , "userComment" => $user_comment , "commentTime" => $created_at, "commentUserName" =>$first_name , "commentUserImage" => $oppUserImageUrl , "commentLikesCount" => $im_dis_like_com , "commentUnlikeCount" => $im_dis_unlike_com , "commentIsLiked" => $comIsLiked , "commentIsUnliked" => $comIsUnliked);
			}


			if($getAuthor != $userID) {
				sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				NotificationSend($userID , $getAuthor , $messageMy, 1 , $discussionID);
			}
			$json = array("success" => 1, "result" => $myCommentArray, "error" =>  "No Error Found");
		}
	}
}
echo json_encode($json);