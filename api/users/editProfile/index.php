<?php 
include("../../../wp-config.php");
global $wpdb;


//Defining varables
$userID = $_REQUEST['userID'];
$name = $_REQUEST['name'];
$age = $_REQUEST['age'];
$gender = $_REQUEST['gender'];
$nationality = $_REQUEST['nationality'];
$officialStatus = $_REQUEST['officialStatus'];
$profession = $_REQUEST['profession'];
$location = $_REQUEST['location'];
$latitude = $_REQUEST['latitude'];
$longitude = $_REQUEST['longitude'];
$bio = $_REQUEST['bio'];
$upload_dir = wp_upload_dir();
$date = new DateTime();
$string = $date->getTimestamp();
//Defining varables


//conditions Start

//checking parameters
if($userID == "") {
	$json = array("success" => 0, "result" => "", "error" =>  "All Fields are Required");
} else {
	//checking User
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "", "error" =>  "Invalid User Invalid");
	} else {
		if(count($_FILES) != 0) {
			$extArr = explode("." , $_FILES["imageUrl"]["name"]);
			$target_file = $upload_dir['path']."/".$string.'.'.end($extArr);
			move_uploaded_file($_FILES["imageUrl"]["tmp_name"], $target_file);
			$url = $upload_dir['url']."/".$string.".".end($extArr);	
		} else {
			$url = "";
		}
		update_user_meta( $userID, 'first_name', $name );
		update_user_meta( $userID, 'age', $age );
		update_user_meta( $userID, 'gender', $gender );
		update_user_meta( $userID, 'nationality', $nationality );
		update_user_meta( $userID, 'officialStatus', $officialStatus );
		update_user_meta( $userID, 'profession', $profession );
		update_user_meta( $userID, 'location', $location );
		update_user_meta( $userID, 'latitude', $latitude );
		update_user_meta( $userID, 'longitude', $longitude );
		update_user_meta( $userID, 'bio', $bio );
		update_user_meta( $userID, 'userImageUrl', $url );

		
		if(!isset($url)) {
			$url = get_user_meta($userID, "userImageUrl", true);
		}
		$json = array("success" => 1, "result" => $url, "error" =>  "No Error Found");
	}
}
echo json_encode($json);
?>