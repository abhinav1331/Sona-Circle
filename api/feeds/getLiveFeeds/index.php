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
$miles1 = $_GET['miles'];
$latitude = $_GET['latitude'];
$popularity = $_GET['popularity'];
$longitude = $_GET['longitude'];
$offset = $_GET['offset'];

if($userID == ""|| $miles1 == ""|| $latitude == ""|| $longitude == ""|| $offset == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Location Parameters required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$myArrayUsers = array();
		$myArrayAdmin = array();
		$getArray = get_users();
		foreach ($getArray as $key => $value) {
			$blockUserCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $value->ID AND `status` = 2");
			if($blockUserCheck == 0) {
				if($value->roles[0] == "subscriber") {
					$latitudee = get_user_meta($value->ID , "latitude" , true);
					$longitudee = get_user_meta($value->ID , "longitude" , true);
					$distance =  distance(floatval($latitude), floatval($longitude), floatval($latitudee), floatval($longitudee), "M");
					if($distance <= $miles1 ) {
						$myArrayUsers[] = array("user_id" => $value->ID , "distance" => $distance);
					}
				} elseif($value->roles[0] == "administrator") {
					$myArrayAdmin[] = $value->ID;
				}
			}
			
		}
		/*echo "<pre>";
			print_r($myArrayAdmin);
		echo "</pre>";*/
		$myFeedsMostLikes = array();
		$myFeedsMost = array();
		foreach ($myArrayUsers as $key => $myArrayUser) {
			
			$id = $myArrayUser['user_id'];
			$distance = $myArrayUser['distance'];
			$userFeeds = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `user_id` = $id AND `status` = 1 ORDER BY `id` DESC");
			foreach ($userFeeds as $key => $value1) {
				/*echo "<pre>";
					print_r($value1->id);
				echo "</pre>";*/
				$likeCount = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id");
				$im_feed_comment = $wpdb->get_var("SELECT count(`id`) FROM `im_feed_comment` WHERE `feed_id` = $value1->id");
				$isLiked = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id AND `user_id` = $userID");
				$popu = $likeCount + $im_feed_comment;
				 // echo "SELECT count(`id`) FROM `im_feeds_spam` WHERE `user_id` = $userID AND `feed_id` = $value1->id";
				$im_feeds_spam = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_spam` WHERE `feed_id` = $value1->id");
				if($im_feeds_spam == 0) {
					/*echo $value1->id.$value1->image_url;
					echo "<br>";*/
					if($value1->description != "" && $value1->image_url != "") {
						$part = 2;
					} elseif($value1->description != "" && $value1->image_url == "") {
						$part = 1;
					} elseif($value1->description == "" && $value1->image_url != "") {
						$part = 0;
					}
					$name = get_user_meta($id , "first_name" , true);
					$quickBloxID = get_user_meta($id , "quickBloxID" , true);
					$userImageUrl = get_user_meta($id , "userImageUrl" , true);
					$myFeedsMost[] = array("feedID" => $value1->id , "opponentID" => $id ,"quickBloxID" => $quickBloxID , "distance" => $distance ,"description" => $value1->description , "image" => $value1->image_url , "likeCount" => $likeCount , "commentCount" => $im_feed_comment , "name" => $name , "userImageUrl" => $userImageUrl , "display" => $part , "isLiked" => $isLiked , "popularity" => $popu, "time" => $value1->post_created);
				}
			}
			
		}

		foreach ($myArrayAdmin as $key => $myArrayAdm) {
			$id = $myArrayAdm;
			$userFeeds = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `user_id` = $id AND `status` = 1 ORDER BY `id` DESC");
			foreach ($userFeeds as $key => $value1) {
				$myLatLongFeed = $wpdb->get_results("SELECT * FROM `im_admin_feeds` WHERE `feed_id` = $value1->id");
				
				$feedLat = $myLatLongFeed[0]->lat;
				$feedlng = $myLatLongFeed[0]->lng;
				$distance1 =  distance(floatval($latitude), floatval($longitude), floatval($feedLat), floatval($feedlng), "M");
				if($distance1 <= $miles1 ) {
					$likeCount = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id");
					$im_feed_comment = $wpdb->get_var("SELECT count(`id`) FROM `im_feed_comment` WHERE `feed_id` = $value1->id");
					$isLiked = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id AND `user_id` = $userID");
					$popu = $likeCount + $im_feed_comment;
					 // echo "SELECT count(`id`) FROM `im_feeds_spam` WHERE `user_id` = $userID AND `feed_id` = $value1->id";
					$im_feeds_spam = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_spam` WHERE `user_id` = $userID AND `feed_id` = $value1->id");
					if($im_feeds_spam == 0) {
						/*echo $value1->id.$value1->image_url;
						echo "<br>";*/
						if($value1->description != "" && $value1->image_url != "") {
							$part = 2;
						} elseif($value1->description != "" && $value1->image_url == "") {
							$part = 1;
						} elseif($value1->description == "" && $value1->image_url != "") {
							$part = 0;
						}
						$name = get_user_meta($id , "first_name" , true);
						$quickBloxID = get_user_meta($id , "quickBloxID" , true);
						$userImageUrl = get_user_meta($id , "userImageUrl" , true);
						$myFeedsMost[] = array("feedID" => $value1->id , "opponentID" => $id ,"quickBloxID" => $quickBloxID , "distance" => $distance ,"description" => $value1->description , "image" => $value1->image_url , "likeCount" => $likeCount , "commentCount" => $im_feed_comment , "name" => $name , "userImageUrl" => $userImageUrl , "display" => $part , "isLiked" => $isLiked , "popularity" => $popu , "time" => $value1->post_created);

					}
				}
			}
		}
			$price = array();
		foreach ($myFeedsMost as $key => $row) {
		    $price[$key] = $row['feedID'];
		}
		array_multisort($price, SORT_DESC, $myFeedsMost);

		if($popularity == 1) {
				$price = array();
			foreach ($myFeedsMost as $key => $row) {
			    $price[$key] = $row['popularity'];
			}
			array_multisort($price, SORT_DESC, $myFeedsMost);
		}
		if($offset==1) {
			$offset=0;
		} else {
			$offset = ( $offset - 1 ) * 20; 
		}
		$menuItems = array_slice( $myFeedsMost, $offset, 20 );
		if(empty($menuItems)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		} else {
			$json = array("success" => 1, "result" => $menuItems, "error" =>  "No Error Found");
		}
	}
}
echo str_replace("null",'""',json_encode($json));