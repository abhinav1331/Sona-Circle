<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$emailAddress = $data_body["emailAddress"];
$password = $data_body["password"];
$latitude = $data_body["latitude"];
$longitude = $data_body["longitude"];
$firebaseTokenId = $data_body["firebaseTokenId"];
$deviceType = $data_body["deviceType"];

if($emailAddress !="" || $password !="") 
{
	if ( email_exists( $emailAddress ) ) 
	{
		$user = get_user_by( 'email', $emailAddress );
		if ( $user && wp_check_password( $password, $user->data->user_pass, $user->ID) )  {
		    $userID = $user->data->ID;
			$name = get_user_meta($user->data->ID, "first_name", true);
			$email_Address = $user->data->user_email;
			
			$profileImageURL = get_user_meta($user->ID, "userImageUrl", true);
			if($latitude !="" )
			{
				update_user_meta( $user->data->ID, 'latitude', $latitude );
			}
			if($longitude !="" )
			{
				update_user_meta( $user->data->ID, 'longitude', $longitude );
			}
			if($firebaseTokenId !="" )
			{
				update_user_meta( $user->data->ID, 'firebaseTokenId', $firebaseTokenId );
			}
			if($deviceType !="" )
			{
				update_user_meta( $user->data->ID, 'deviceType', $deviceType );
			}
			$age = get_user_meta($user->data->ID , "age" , true);
			$userStatus = get_user_meta($user->data->ID , "userStatus" , true);
			$gender = get_user_meta($user->data->ID , "gender" , true);
			$nationality = get_user_meta($user->data->ID , "nationality" , true);
			$officialStatus = get_user_meta($user->data->ID , "officialStatus" , true);
			$profession = get_user_meta($user->data->ID , "profession" , true);
			$bio = get_user_meta($user->data->ID, "bio" , true);
			$location = get_user_meta($user->data->ID , "location" , true);
			$quickBloxID = get_user_meta($user->data->ID , "quickBloxID" , true);
			$quickBloxPaswd = get_user_meta($user->data->ID , "quickBloxPaswd" , true);
			$arrayData = array("userID" => (int)$userID , "name" => $name, "emailAddress" => $email_Address, "userImageUrl" => $profileImageURL , "age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "profession" => $profession , "bio" => $bio , "location" => $location , "quickBloxID" => $quickBloxID , "quickBloxPaswd" => $quickBloxPaswd);
			$arrayData = str_replace("null",'""',json_encode($arrayData));
			if($userStatus == 1) {
				$json = array("success" => 1, "result" => json_decode($arrayData), "error" => "No Error Found");	
			} else {
				$json = array("success" => 0, "result" => null, "error" =>  "User Not Vefified");	
			}	
		   
		} else {
			$json = array("success" => 0, "result" => null, "error" =>  "Incorrect Password");
		}
	} else {
		$json = array("success" => 0, "result" => null, "error" =>  "Invalid Email Address");
	}
}
else
{
	$json = array("success" => 0, "result" => null, "error" =>  "no parameters");
}
echo json_encode($json)
?>