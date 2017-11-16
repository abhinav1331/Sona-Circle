<?php 
include("../wp-config.php");
$data_body = json_decode(file_get_contents('php://input'), true);
$emailID = sanitize_email($data_body['emailID']);
$name = $data_body['name'];
$password = "";
$facebookID = $data_body['facebookID'];
$profilePicUrl = $data_body['profilePicUrl'];
$firebaseTokenId = $data_body["firebaseTokenId"];
$deviceType = $data_body["deviceType"];
if($password != "") {
	$password = $password;
} else {
	$password = "Admin123#@";
}

if($name != "" || $emailID !="" || $deviceType !="") {
	if( email_exists( $emailID )) {

		$user = get_user_by( "email" , $emailID );
		$userID = $user->data->ID;
		$first_name = get_user_meta($user->data->ID, "first_name", true);
		$profileImageURL = get_user_meta($user->data->ID, "profileImageURL", true);
		$pushNotificationStatus = get_user_meta($user->data->ID,'pushNotificationStatus',true);
		if($pushNotificationStatus == "") {
			$statA = 1;
		} else {
			$statA = $deviceName;
		}
		if (is_null($profileImageURL)) {
		     $profileImageURL = "";
		}
		if($facebookID != "" ) {
			$userinfo = array("userID" => $user->ID , "name" => $first_name , "emailID" => $emailID , "profilePicUrl" => $profileImageURL);
			if($language == "es") {
					$message = "No se ha encontrado ningún error";
				} else {
					$message = "No Error Found";
				}
			$json = array("success" =>1 , "userInfo" => $userinfo , "error" => $message);

		} else {
			if($language == "es") {
					$message = "La dirección de correo ya exister";
				} else {
					$message = "Email Address Already Exists";
				}
			$json = array("success" => 0, "result" => "", "error" => $message);
		}
	} else {
		
		if (is_null($profileImageURL)) {
		     $profileImageURL = "";
		}
		$user_id = wp_create_user( $emailID, $password, $emailID );
		update_user_meta( $user_id, "first_name", $name); 
		update_user_meta( $user_id, "profileImageURL", $profilePicUrl); 
		update_user_meta( $user_id, "facebookId", $facebookID); 
		update_user_meta( $user_id, "firebaseTokenId", $firebaseTokenId); 
		update_user_meta( $user_id, "deviceType", $deviceType); 
		$userinfo = array("userID" => $user_id , "name" => $name , "emailID" => $emailID , "profilePicUrl" => $profilePicUrl);
		if($language == "es") {
					$message = "No se ha encontrado ningún error";
				} else {
					$message = "No Error Found";
				}
		$json = array("success" =>1 , "userInfo" => $userinfo , "error" => $message);
	}
} else {
	$json = array("success" => 0, "result" => "", "error" => "Parameter Missing");	
}
echo str_replace("null","",json_encode($json));
 ?>