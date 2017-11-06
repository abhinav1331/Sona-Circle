<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$profileID = $_GET['profileID'];
if($userID == "" || $profileID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	$friend = get_user_by( 'ID', $profileID );
	if(empty($user) || empty($friend)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$getRes = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $profileID");
		if(empty($getRes)) {
			$friendStatus = 0;
		} else {
			$friendS = $getRes[0]->status;
			if($friendS == 1) {
				$friendStatus = 3;
			} else {
				$friendStatus = 2;
			}
		}
		if($friendStatus == 2) {
			$json = array("success" => 0, "result" => array(), "error" =>  "User Not allowed to view profile");

		} else {

			//user Intro
			$userImageUrl = get_user_meta($profileID , "userImageUrl" , true);
			$first_name = get_user_meta($profileID , "first_name" , true);
			$profession = get_user_meta($profileID , "profession" , true);
			$bio = get_user_meta($profileID , "bio" , true);
			$user_intro = array("profileImage" => $userImageUrl , "userName" => $first_name , "designation" => $profession , "description" => $bio);
			//user Intro



			//userInfo
				$age = get_user_meta($profileID , "age" , true);
				$gender = get_user_meta($profileID , "gender" , true);
				$nationality = get_user_meta($profileID , "nationality" , true);
				$officialStatus = get_user_meta($profileID , "officialStatus" , true);
				$user_info = array("age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "liveFeedCount" => 0 , "postCount" => 0);
			//userInfo

			//connections
				$getCountFriend = $wpdb->get_var("SELECT count(`id`) FROM `im_conects` `userID` = $profileID AND `status` = 1");
				$getResulttFriend = $wpdb->get_results("SELECT * FROM `im_conects` `userID` = $profileID AND `status` = 1");
				$imageUrl = array();
				foreach($getResulttFriend as $resultFreind) {
					$imgUr = $resultFreind->user_friend_id;
					$userImageUrl1 = get_user_meta($imgUr , "userImageUrl" , true);
					$imageUrl[] = $userImageUrl1;
				}
				$connections =array("userName" => $first_name , "connectionCount" => $getCountFriend , "imageUrl" => $imageUrl);
			//connections


			//experience
				$userResultGET = array();
				$userResult = $wpdb->get_results("SELECT * FROM `im_experiance` WHERE `user_id` = $profileID ORDER BY `id` DESC");
				foreach ($userResult as $key => $value) {
					if($value->is_present == "1") {
						$endData = "Present";
					} else {
						$endData = date("d/m/Y" , strtotime($value->end_date));
					}
					$userResultGET[] = array("id" => $value->id , "title" => $value->title ,  "startDate" => date("d/m/Y" , strtotime($value->start_date)) , "endDate" => $endData);

				}
			//experience

			//education
				$userResultEdy = array();
				$userResultEDU = $wpdb->get_results("SELECT * FROM `im_education` WHERE `user_id` = $profileID ORDER BY `id` DESC");
				foreach ($userResultEDU as $key => $value) {
					if($value->is_present == "1") {
						$endData = "Present";
					} else {
						$endData = date("d/m/Y" , strtotime($value->end_date));
					}
					$userResultEdy[] = array( "title" => $value->title ,"course" => $value->course_name ,  "startDate" => date("d/m/Y" , strtotime($value->start_date)) , "endDate" => $endData);
				}
			//education

			//skills_endorsement
				$myArry = array();
			foreach( $wpdb->get_results("SELECT * FROM `im_skills` WHERE `user_id` = $profileID") as $key => $row) {
				$countMy = $wpdb->get_var("SELECT count(`id`) FROM `im_skills_endorsement` WHERE `skill_id` = $row->id");
				$myArry[] = array($row->name."(".$countMy.")" );
			}
			$skillsCount = $wpdb->get_var("SELECT count(`id`) FROM `im_skills` WHERE `user_id` = $profileID");
			$skills_endorsement = array("title" => $myArry , "skillsCount"=> $skillsCount);
			//skills_endorsement

			//interest
			$myArryInt = array();
			foreach( $wpdb->get_results("SELECT * FROM `im_interests` WHERE `user_id` = $profileID") as $key => $row) {
				$myArryInt[] = array( $row->name );
			}
			$intersCount = $wpdb->get_var("SELECT count(`id`) FROM `im_interests` WHERE `user_id` = $profileID");
			$interest = array("interest" => $myArryInt , "interestCount" => $intersCount);
			//interest


			//accomplishment
			$myArrylng = array();
			foreach( $wpdb->get_results("SELECT * FROM `im_language` WHERE `user_id` = $profileID") as $key => $row) {
				$myArrylng[] = array( $row->name );
			}
			$intersCount = $wpdb->get_var("SELECT count(`id`) FROM `im_language` WHERE `user_id` = $profileID");
			$accomplishment = array("languageCount" => $intersCount , "languages" => $myArrylng);
			//accomplishment


			//contact
			$facebook = get_user_meta($profileID , "facebook" , true);
			$twitter = get_user_meta($profileID , "twitter" , true);
			$instagram = get_user_meta($profileID , "instagram" , true);
			$phone = get_user_meta($profileID , "phone" , true);
			$contact = array("facebook" => $facebook ,"twitter" => $twitter ,"instagram" => $instagram ,"phone" => $phone , "email" => $friend->data->user_email);
			//contact

			//profile_Completeness
			$profile_Completeness = 0;
			if($first_name != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($userImageUrl != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($profession != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($bio != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($age != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($gender != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($nationality != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($officialStatus != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($facebook != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($twitter != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($instagram != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if($contact != "" ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if(!empty($userResultGET) ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if(!empty($userResultEdy) ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if(!empty($myArry) ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if(!empty($myArryInt) ){ $profile_Completeness = $profile_Completeness + 5.88; }
			if(!empty($myArrylng) ){ $profile_Completeness = $profile_Completeness + 5.88; }
			$profile_Completeness = round($profile_Completeness);
			//profile_Completeness
			$finPrep = array("user_intro" => $user_intro , "user_info" => $user_info , "profile_Completeness" => $profile_Completeness , "connections" => $connections , "experience" => $userResultGET , "education" => $userResultEdy , "skills_endorsement" => $skills_endorsement , "interest" => $myArryInt , "accomplishment" => $accomplishment , "contact" => $contact);

			
		}
	}
}
echo json_encode($finPrep)