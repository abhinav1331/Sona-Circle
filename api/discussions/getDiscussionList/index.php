<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);
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
$miles1 = $_GET['miles'];
$latitude = $_GET['latitude'];
$longitude = $_GET['longitude'];
$popularity1 = $_GET['popularity'];
$CatIDTmp = $_GET['catID'];
$catIDArr = explode("|" , $CatIDTmp);
$offset = $_GET['offset'];

if($userID == ""|| $miles1 == ""|| $latitude == ""|| $longitude == ""|| $offset == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		if($CatIDTmp != "") {
			foreach ($catIDArr as $key => $cateID) {
				$catID = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_category` WHERE `id` = $cateID");
				if($catID == 0) {
					$value = "Invalid";
					break;
				}
			}
		}
		if($value != "Invalid" && $CatID == "") {
			$myArrayUsers = array();
			$getArray = get_users();
			foreach ($getArray as $key => $value) {
				$blockUserCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $value->ID AND `status` = 2");
				if($blockUserCheck == 0) {
					$latitudee = get_user_meta($value->ID , "latitude" , true);
					$longitudee = get_user_meta($value->ID , "longitude" , true);
					$distance =  distance(floatval($latitude), floatval($longitude), floatval($latitudee), floatval($longitudee), "M");
					if($distance <= $miles1) {
						$myArrayUsers[] = array("user_id" => $value->ID , "distance" => $distance);
					}
				}
			}
			foreach ($myArrayUsers as $key => $myArrayUser) {
				$userId = $myArrayUser['user_id'];
				$results = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `user_id` = $userId AND `status` = 1 ORDER BY `id` DESC");

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
				$price = array();
					foreach ($ArragetDis as $key => $row) {
						$price[$key] = $row['discussionsID'];
					}
					array_multisort($price, SORT_DESC, $ArragetDis);
				if($popularity1 == 1) {
					$price = array();
					foreach ($ArragetDis as $key => $row) {
						$price[$key] = $row['popularity'];
					}
					array_multisort($price, SORT_DESC, $ArragetDis);
				}

				if($offset==1) {
					$offset=0;
				} else {
					$offset = ( $offset - 1 ) * 20; 
				}
				$ArragetDis = array_slice( $ArragetDis, $offset, 20 );
					
				$json = array("success" => 1, "result" => $ArragetDis, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			}
				
		} else {
			$json = array("success" => 0, "result" => array(), "error" =>  "Invalid Category");
		}

	}
}
echo json_encode($json);