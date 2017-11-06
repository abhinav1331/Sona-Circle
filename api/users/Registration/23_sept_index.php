<?php 
include("../../../wp-config.php");

global $wpdb;
require_once(ABSPATH . 'wp-admin/includes/media.php');
require_once(ABSPATH . 'wp-admin/includes/file.php');
require_once(ABSPATH . 'wp-admin/includes/image.php');


$data_body = json_decode(file_get_contents("php://input"), true);
$userImageUrl = $data_body['userImageUrl'];
$name = $data_body["name"];
$emailAddress = $data_body["emailAddress"];
$password = $data_body["password"];
$facebookId = $data_body["facebookId"];
$latitude = $data_body["latitude"];
$longitude = $data_body["longitude"];
$firebaseTokenId = $data_body["firebaseTokenId"];
$deviceType = $data_body["deviceType"];
$quickBloxID = $data_body["quickBloxID"];
$quickBloxPaswd = $data_body["quickBloxPaswd"];

if($emailAddress !="" || $password !="") {
	if( email_exists( $emailAddress )) {
		$user = get_user_by( "email", $emailAddress );
		$userID = $user->data->ID;
		$first_name = get_user_meta($user->data->ID, "first_name", true);
		$email_Address = $user->data->user_email;
		$profileImageURL = get_user_meta((int)$userID, "userImageUrl", true);

		if($profileImageURL == "") {
			$profileImageURL = "";
		}

		if($firebaseTokenId != "") {
			update_user_meta( $user->data->ID, 'firebaseTokenId', $firebaseTokenId );
		}
		if($facebookId != "") {
			$facebookIdold = get_user_meta($userID, "facebookId", true);
			$age = get_user_meta((int)$userID , "age" , true);
			$gender = get_user_meta($userID , "gender" , true);
			$nationality = get_user_meta($userID , "nationality" , true);
			$officialStatus = get_user_meta($userID , "officialStatus" , true);
			$profession = get_user_meta($userID , "profession" , true);
			$bio = get_user_meta($userID, "bio" , true);
			$location = get_user_meta($userID , "location" , true);
			update_user_meta( $user->data->ID, 'latitude', $latitude );
			update_user_meta( $user->data->ID, 'longitude', $longitude );
			update_user_meta( $user->data->ID, 'deviceType', $deviceType );
			update_user_meta( $user->data->ID, 'quickBloxID', $quickBloxID );
			update_user_meta( $user->data->ID, 'quickBloxPaswd', $quickBloxPaswd );
			$arrayData = array("userID" => (int)$userID , "name" => $name, "emailAddress" => $email_Address, "userImageUrl" => $profileImageURL , "age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "profession" => $profession , "bio" => $bio , "location" => $location, "quickBloxPaswd" => $quickBloxPaswd , "quickBloxID" => $quickBloxID);
			$json = array("success" => 1, "result" => $arrayData, "error" => "No Error Found");
		} else {
			$json = array("success" => 0, "result" => array(), "error" => "Email Address Already Exists");
		}
	} else {

		if($facebookId != "") {
			if($password != "") {
				$password = $password;
			} else {
				$password = "Admin123#@";
			}
		} else {
			$password = $password;
		}
		$user_id = wp_create_user( $emailAddress, $password, $emailAddress );
		update_user_meta( $user_id, "first_name", $name); 
		$getUserPriofileWay = get_user_meta($user_id, "getUserPriofileWay", true);
		if ($getUserPriofileWay != "") {
			update_user_meta( $user_id, "userImageUrl", $data_body['userImageUrl']); 
		}
		update_user_meta( $user_id, "facebookId", $facebookId); 
		update_user_meta( $user_id, "firebaseTokenId", $firebaseTokenId); 
		update_user_meta( $user_id, 'deviceType', $deviceType );
		$wpdb->insert( 'im_usermeta', array(
			'user_id' => $user_id,
			'meta_key' => "userImageUrl",
			'meta_value' => $data_body['userImageUrl'] )
		); 
		$profileImageURL = get_user_meta($user_id, "profileImageURL", true);
		if($profileImageURL == "") {
			$profileImageURL = "";
		}
		update_user_meta( $user_id, "latitude", $latitude); 
		update_user_meta( $user_id, "longitude", $longitude); 
		update_user_meta( $user_id, 'pushNotification', 1 );
		update_user_meta( $user_id, 'broadcastNotification', 1 );
		update_user_meta( $user_id, 'postNotification', 1 );
		update_user_meta( $user_id, 'showPreview', 1 );
		update_user_meta( $user_id, 'quickBloxPaswd', $quickBloxPaswd );
		update_user_meta( $user_id, 'quickBloxID', $quickBloxID );
		$age = get_user_meta($user_id , "age" , true);
		$gender = get_user_meta($user_id , "gender" , true);
		$nationality = get_user_meta($user_id , "nationality" , true);
		$officialStatus = get_user_meta($user_id , "officialStatus" , true);
		$profession = get_user_meta($user_id , "profession" , true);
		$bio = get_user_meta($user_id, "bio" , true);
		$location = get_user_meta($user_id , "location" , true);
		$arrayData = array("userID" => (int)$userID , "name" => $name, "emailAddress" => $email_Address, "userImageUrl" => $profileImageURL , "age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "profession" => $profession , "bio" => $bio , "location" => $location, "quickBloxPaswd" => $quickBloxPaswd , "quickBloxID" => $quickBloxID);

		$json = array("success" => 1, "result" => $arrayData, "error" => "No Error Found");
	}
	
} else {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameter Missing");	
}
echo str_replace("null",'""',json_encode($json));

?>