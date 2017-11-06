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
$searchText = $_GET['searchText'];
$miles = $_GET['miles'];
$miles = $_GET['miles'];
$offset = $_GET['offset'];
$CatIDTmp = $_GET['catID'];
$catIDArr = explode("|" , $CatIDTmp);

if($userID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$discussions = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `status` = 1 ORDER BY `id` DESC");
		$myArray = array();
		foreach ($discussions as $key => $value) {
			$myLat = get_user_meta($userID , "latitude" , true);
			$myLng = get_user_meta($userID , "longitude" , true);
			$UserLat = get_user_meta($value->user_id , "latitude" , true);
			$UserLng = get_user_meta($value->user_id , "longitude" , true);
			$distance =  distance($myLat, $myLng, $UserLat, $UserLng, "M"); 
			if($distance <= $miles) {
				if (strpos($value->title, $searchText) !== false) {
					$myArray[] = $value->id;
				}
				if (strpos($value->description, $searchText) !== false) {
					$myArray[] = $value->id;
				}
			}
		}
		$myArray = array_unique($myArray);
		if($offset==1) {
			$offset=0;
		} else {
			$offset = ( $offset - 1 ) * 20; 
		}
		$myArray = array_slice( $myArray, $offset, 20 );
		$ArragetDis = array();
		foreach ($myArray as $key => $result) {
			$userId = $result;
			$results = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $userId AND `status` = 1 ORDER BY `id` DESC");
			
			foreach ($results as $key => $result) {
				$disLike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_like` WHERE `dis_id` = $result->id");
				$im_discussion_unlike = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_unlike` WHERE `dis_id` = $result->id");
				$disComment = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_comment` WHERE `dis_id` = $result->id");
				$popularity = $disLike + $disComment;
				$name = get_user_meta($result->user_id , "first_name" , true);
				$userImageUrl = get_user_meta($result->user_id , "userImageUrl" , true);
				$quickBloxID = get_user_meta($result->user_id , "quickBloxID" , true);
				if($CatIDTmp != "") {
					$myArr = array();
					$wpGet = $wpdb->get_results("SELECT `cat_id` FROM `im_discussion_rel` WHERE `dis_id` = $result->id");
					foreach ($wpGet as $key => $wpGett) {
						$myArr[] = $wpGett->cat_id;
					}
					if(!empty(array_intersect($catIDArr, $myArr))) {
						$ArragetDis[] = array("discussionsID" => $result->id , "userID" => $result->user_id , "quickBloxID" => $quickBloxID ,"name" => $name , "userImageUrl" => $userImageUrl, "title" => $result->title , "description" => $result->description , "discussion_created" => $result->discussion_created , "popularity" => $popularity , "likesCount" => $disLike , "unlikesCount" => $im_discussion_unlike, "commentsCount" => $disComment);
					}
				} else {
					$ArragetDis[] = array("discussionsID" => $result->id , "userID" => $result->user_id , "quickBloxID" => $quickBloxID, "name" => $name , "userImageUrl" => $userImageUrl, "title" => $result->title , "description" => $result->description , "discussion_created" => $result->discussion_created , "popularity" => $popularity , "likesCount" => $disLike , "unlikesCount" => $im_discussion_unlike, "commentsCount" => $disComment);
				}
					
			}
		}
		if(!empty($ArragetDis)) {
			$json = array("success" => 1, "result" => $ArragetDis, "error" =>  "No Error Found");
		} else {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		}
	}
}
echo json_encode($json);