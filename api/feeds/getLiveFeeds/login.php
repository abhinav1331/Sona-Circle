<?php 
include("../wp-config.php");
$data_body = json_decode(file_get_contents('php://input'), true);
$emailID = sanitize_email($data_body['emailID']);
$firebaseTokenId = sanitize_email($data_body['firebaseTokenId']);
$deviceType = sanitize_email($data_body['deviceType']);
$password = $data_body['password'];
if ( email_exists( $emailID ) )  {
	  $user = get_user_by( 'email', $emailID );
	  /*if ( $user && wp_check_password( $password, $user->data->user_pass, $user->ID) ) 
		{ */
			$first_name = get_user_meta( $user->ID, 'first_name', true );
			$image_url = get_user_meta($user->ID, "profileImageURL", true);
			/*if (is_null($image_url)) {
			     $image_url = "";
			}*/
			
		update_user_meta( $user->ID, "firebaseTokenId", $firebaseTokenId); 
		update_user_meta( $user->ID, "deviceType", $deviceType); 
			$userinfo = array("userID" => $user->ID , "name" => $first_name , "emailID" => $emailID , "profilePicUrl" => $image_url);
			$json = array("success" =>1 , "userInfo" => $userinfo , "error" => "No Error Found");
		/*} else {
			$json = array("success" =>0 , "userInfo" => 0 , "error" => "Incorrect Password");
		}*/
} else {
			$json = array("success" =>0 , "userInfo" => 0 , "error" => "Invalid Account");
}
echo str_replace("null","",json_encode($json));
 ?>