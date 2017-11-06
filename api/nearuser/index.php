<?php 
include("../../wp-config.php");
global $wpdb;
$userID = $_GET['userID'];
$latitude = $_GET['latitude'];
$longitude = $_GET['longitude'];
$age = $_GET['age'];
$gender = $_GET['gender'];
$Mykeyword = $_GET['keyword'];
$miles = $_GET['miles'];
$popularity = $_GET['popularity'];
$offset = $_GET['offset'];


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

if($userID == ""|| $miles == ""|| $latitude == ""|| $longitude == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$get_users = get_users();
		$getMyuser = array();
		$getMyuserTMP = array();
		$getMyusersAge = array();
		$getMyusersGender = array();
		$getMyusersKeyWord = array();
		foreach ($get_users as $key => $value) {
			$blockUserCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $value->ID AND `status` = 2");
			if($value->ID != $userID && $blockUserCheck == 0) {
				$mayLat = get_user_meta($value->ID , "latitude" , true);
				$mayLng = get_user_meta($value->ID , "longitude" , true);
				$getRes = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $value->ID");
				$im_connects_requests = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `sender_id` = $userID AND `reciever_id` = $value->ID AND `status` = 0");
				if(empty($getRes)) {
					if($userID == $value->ID) {
						$friendStatus = 1;	
					} elseif(!empty($im_connects_requests)) {
						$friendStatus = 4;	
					} else {
						$im_connects_requests1 = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `sender_id` = $profileID AND `reciever_id` = $userID AND `status` = 0");
						if(!empty($im_connects_requests1)) {
							$friendStatus = 3;
						} else {
							$friendStatus = 0;
						}
					}
				} else {
					$friendS = $getRes[0]->status;
					if($friendS == 1) {
						$friendStatus = 1;
					} else {
						$friendStatus = 2;
					}
				}
				$distance =  distance($latitude, $longitude, $mayLat, $mayLng, "M");
				if($distance <= $miles && $friendStatus != 2) {
					$getMyuserTMP[] = $value->ID;
				}
			}
		}

		if(!empty($getMyuserTMP) && $age != "") {
			$myUsreAge = $wpdb->get_results("SELECT * FROM `im_usermeta` WHERE `meta_key` = 'age' and `meta_value` = $age");
			foreach ($myUsreAge as $key => $myUsreAges) {
				if(in_array($myUsreAges->user_id , $getMyuserTMP)) {
					$getMyusersAge[] = $myUsreAges->user_id;
				}
			}
		} else {
			$getMyusersAge = $getMyuserTMP;
		}

		if(!empty($getMyusersAge) && $gender != "") {
			$myUsreGender = $wpdb->get_results("SELECT * FROM `im_usermeta` WHERE `meta_key` = 'gender' and `meta_value` = '$gender'");
			foreach ($myUsreGender as $key => $myUsreGende) {
				if(in_array($myUsreGende->user_id , $getMyusersAge)) {
					$getMyusersGender[] = $myUsreGende->user_id;
				}
			}
		} else {
			$getMyusersGender = $getMyusersAge;
		}
		if(!empty($getMyusersGender) && $Mykeyword != "") {
			$myKeyArraya = explode("|" , $Mykeyword);
			foreach ($myKeyArraya as $key => $keyword) {
				$myUsrefirst_name = $wpdb->get_results("SELECT * FROM `im_usermeta` WHERE `meta_key` = 'first_name' and `meta_value` = '$keyword'");
				foreach ($myUsrefirst_name as $key => $myUsreGende) {
					if(in_array($myUsreGende->user_id , $getMyusersGender)) {
						$getMyusersKeyWord[] = $myUsreGende->user_id;
					}
				}


				$myUsreim_skills = $wpdb->get_results("SELECT * FROM `im_skills` WHERE `name` LIKE '%".$keyword."%'");
				foreach ($myUsreim_skills as $key => $myUsreGende) {
					if(in_array($myUsreGende->user_id , $getMyusersGender)) {
						$getMyusersKeyWord[] = $myUsreGende->user_id;
					}
				}

				$myUsreim_skills = $wpdb->get_results("SELECT * FROM `im_interests` WHERE `LIKE` = '%".$keyword."%'");
				foreach ($myUsreim_skills as $key => $myUsreGende) {
					if(in_array($myUsreGende->user_id , $getMyusersGender)) {
						$getMyusersKeyWord[] = $myUsreGende->user_id;
					}
				}
				$myUsreim_skills = $wpdb->get_results("SELECT * FROM `im_education` WHERE `LIKE` = '%".$keyword."%'");
				foreach ($myUsreim_skills as $key => $myUsreGende) {
					if(in_array($myUsreGende->user_id , $getMyusersGender)) {
						$getMyusersKeyWord[] = $myUsreGende->user_id;
					}
				}
				$myUsreim_skills = $wpdb->get_results("SELECT * FROM `im_experiance` WHERE `title` LIKE '%".$keyword."%'");
				foreach ($myUsreim_skills as $key => $myUsreGende) {
					if(in_array($myUsreGende->user_id , $getMyusersGender)) {
						$getMyusersKeyWord[] = $myUsreGende->user_id;
					}
				}
				$getMyusersKeyWord = array_unique($getMyusersKeyWord);
			}
		} else {
			$getMyusersKeyWord = $getMyusersGender;
		}
		if($offset==1) {
			$offset=0;
		} else {
			$offset = ( $offset - 1 ) * 20; 
		}
		$getMyusersKeyWord = array_slice( $getMyusersKeyWord, $offset, 20 );
		if(!empty($getMyusersKeyWord)) {
			
			foreach ($getMyusersKeyWord as $key => $value) {
				$getRes = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $value");
				$im_connects_requests = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `sender_id` = $userID AND `reciever_id` = $value AND `status` = 0");
				if(empty($getRes)) {
					if($userID == $value) {
						$friendStatus = 1;	
					} elseif(!empty($im_connects_requests)) {
						$friendStatus = 4;	
					} else {
						$im_connects_requests1 = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `sender_id` = $profileID AND `reciever_id` = $userID AND `status` = 0");
						if(!empty($im_connects_requests1)) {
							$friendStatus = 3;
						} else {
							$friendStatus = 0;
						}
					}
				} else {
					$friendS = $getRes[0]->status;
					if($friendS == 1) {
						$friendStatus = 1;
					} else {
						$friendStatus = 2;
					}
				}
				$mayLat = get_user_meta($value , "latitude" , true);
				$mayLng = get_user_meta($value , "longitude" , true);
				$first_name = get_user_meta($value , "first_name" , true);
				$age = get_user_meta($value , "age" , true);
				$location = get_user_meta($value , "location" , true);
				$userImageUrl = get_user_meta($value , "userImageUrl" , true);
				$onlineStatus = get_user_meta($value , "onlineStatus" , true);
				$onlineTime = get_user_meta($value , "onlineTime" , true);
				$quickBloxID = get_user_meta($value , "quickBloxID" , true);
				if($onlineStatus == "false") {
					$timee = $onlineTime;
				} else{
					$timee = "";
				}
				$distance =  distance($latitude, $longitude, $mayLat, $mayLng, "M");
				$endorseMent = $wpdb->get_var("SELECT count(`id`) FROM `im_skills_endorsement` WHERE `endorse_user` = $value");
				$myArray[] = array("opponentID" => $value , "quickBloxID" => $quickBloxID, "is_friend" => $friendStatus ,"distance" => $distance , "name" => $first_name , "age" => $age , "location" => $location , "userImageUrl" => $userImageUrl , "onlineStatus" => $onlineStatus, "onlineTime" => $timee , "endorsement" => $endorseMent);
			}
			if($popularity == 1) {
				$price = array();
				foreach ($myArray as $key => $row) {
				    $price[$key] = $row['endorsement'];
				}
				array_multisort($price, SORT_DESC, $myArray);
			}

			$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
		} else {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		}

	}
}
echo json_encode($json);