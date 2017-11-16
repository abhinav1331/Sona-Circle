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

	
$userID = $_REQUEST['userID'];
$description = $_REQUEST['description'];
$currentTime = time();
$upload_dir = wp_upload_dir();
$date = new DateTime();
$string = $date->getTimestamp();


if($userID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		if(count($_FILES) != 0) {
			$target_file = $upload_dir['path']."/".$string.'.jpg';
			move_uploaded_file($_FILES["imageUrl"]["tmp_name"], $target_file);
			$url = $upload_dir['url']."/".$string.".jpg";	
			$get_url_status = get_headers($url);

			if($get_url_status[0]=="HTTP/1.1 200 OK") {  } else { $json = array("success" => 0, "result" => 0, "error" =>  "file intrupted"); echo json_encode($json); exit; }
		} else {
			$url = "";
		}
		$wpdb->insert( 'im_feeds', array(
			'user_id' => $userID,
			'description' => $description,
			'image_url' => $url,
			'status' => 1,
			'post_created' => $currentTime)
		);

		$myLati = get_user_meta($userID , "latitude" , true);
		$myLongi = get_user_meta($userID , "longitude" , true);
		$getArray = get_users();
		foreach ($getArray as $key => $value) {
			$latitudee = get_user_meta($value->ID , "latitude" , true);
			$longitudee = get_user_meta($value->ID , "longitude" , true);
			$distance =  distance(floatval($myLati), floatval($myLongi), floatval($latitudee), floatval($longitudee), "M");
			if($distance <= 30) {
				$myArrayUsers[] = array("user_id" => $value->ID , "distance" => $distance);
			}
		}
		$name = get_user_meta($userID , "first_name" , true);
		$messageMy = $name." has posted a new feed";
		foreach ($myArrayUsers as $key => $value) {
			$postNotification = get_user_meta( $value['user_id'], 'postNotification', true );
			if($postNotification == 1) {
				if($value['user_id'] != $userID) {
					$firebaseTokenId = get_user_meta($value['user_id'] , "firebaseTokenId" , true);
					sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
				}
			}
		}
		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
	}
}
echo  json_encode($json);
?>