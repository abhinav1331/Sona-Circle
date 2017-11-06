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
$offset = $_GET['offset'];
$ArragetDis = array();

if($userID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(!empty($user)) {
		$results = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `user_id` = $userID ORDER BY `id` DESC");
				foreach ($results as $key => $result) {
					$disLike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $result->id");
					$im_discussion_unlike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $result->id");
					$disComment = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_comment` WHERE `dis_id` = $result->id");
					$popularity = $disLike + $disComment;
					$name = get_user_meta($result->user_id , "first_name" , true);
					$userImageUrl = get_user_meta($result->user_id , "userImageUrl" , true);
					$quickBloxID = get_user_meta($result->user_id , "quickBloxID" , true);
						$ArragetDis[] = array("discussionsID" => $result->id , "userID" => $result->user_id , "quickBloxID" => $quickBloxID, "name" => $name , "userImageUrl" => $userImageUrl, "title" => $result->title , "description" => $result->description , "discussion_created" => $result->discussion_created , "popularity" => $popularity , "likesCount" => $disLike , "unlikesCount" => $im_discussion_unlike, "commentsCount" => $disComment);
				}
				$price = array();
				foreach ($ArragetDis as $key => $row) {
					$price[$key] = $row['discussionsID'];
				}
				array_multisort($price, SORT_DESC, $ArragetDis);
				if($offset==1) {
					$offset=0;
				} else {
					$offset = ( $offset - 1 ) * 20; 
				}
				$ArragetDis = array_slice( $ArragetDis, $offset, 20 );
				if(!empty($ArragetDis)) {
					$json = array("success" => 1, "result" => $ArragetDis, "error" =>  "No Error Found");
				} else {
					$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
				}
			} else {
				$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
			}
	}
echo json_encode($json);