<?php 
include("../../../wp-config.php");
global $wpdb;


//Functions
function distance($lat1, $lon1, $lat2, $lon2, $unit) {
	  $theta = $lon1 - $lon2;
	  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
	  $dist = acos($dist);
	  $dist = rad2deg($dist);
	  $miles = $dist * 60 * 1.1515;
	  $unit = strtoupper($unit);
	  if ($unit == "K") {
	    return ($miles * 1.609344);
	  } else if ($unit == "N") {
	      return ($miles * 0.8684);
	    } else {
	        return $miles;
	      }
	}
//Functions


$userID = $_GET['userID'];
$discussionsID = $_GET['discussionsID'];
$mainArray = array();
$myCommentArray = array();

if($userID == ""|| $discussionsID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$discussionCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion` WHERE `id` = $discussionsID");
		if($discussionCheck == 0) {
			$json = array("success" => 0, "result" => array(), "error" =>  "Invalid Discussions");
		} else {
			$getDiscussionDetails = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $discussionsID");
			$disLike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $discussionsID");
			$im_discussion_unlike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $discussionsID");
			$disComment = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_comment` WHERE `dis_id` = $discussionsID");

			$isliked = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $discussionsID AND `user_id` = $userID");
			$isuliked = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $discussionsID AND `user_id` = $userID");
			$discussioID = $getDiscussionDetails[0]->id;
			$title = $getDiscussionDetails[0]->title;
			$description = $getDiscussionDetails[0]->description;
			$user_id = $getDiscussionDetails[0]->user_id;
			$discussion_created = $getDiscussionDetails[0]->discussion_created;
			$userImageUrl = get_user_meta($user_id , "userImageUrl" , true);
			$myCommentRes = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `dis_id` = $discussioID");
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
				$myCommentArray[] = array("commentID" => $commentID ,"userID" => $commentUserID , "userComment" => $user_comment , "commentTime" => $created_at, "commentUserName" =>$first_name , "commentUserImage" => $oppUserImageUrl , "commentLikesCount" => $im_dis_like_com , "commentUnlikeCount" => $im_dis_unlike_com , "commentIsLiked" => $comIsLiked , "commentIsUnliked" => $comIsUnliked);
			}
			$mainArray = array("discussionsID" => $discussionsID , "title" => $title , "description" => $description , "discussion_created" => $discussion_created , "userImageUrl" => $userImageUrl , "likesCount" => $disLike , "unlikesCount" => $im_discussion_unlike , "commentsCount" => $disComment , "isLiked" => $isliked, "isUnLiked" => $isuliked, "comments" => $myCommentArray);
				$json = array("success" => 1, "result" => $mainArray, "error" =>  "Invalid User");

		}
	}
}
echo json_encode($json);
