<?php 
include("../../../wp-config.php");
global $wpdb;
$userID = $_GET["userID"];
$myArray = array();

if($userID == "")
	{
		$json = array("success" => 0, "result" => array(), "error" =>  "no parameters");
	}
	else
	{
		$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	}
	else {
	
		$im_discussion = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `parent_id` = 0" );
		foreach($im_discussion as $key=>$value) {
			$subArr = array();
			$id = $value->id;
			$name = $value->name;
			$parentcatID = $value->id;
			$im_cat = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `parent_id` = $id" );
			foreach ($im_cat as $key => $value) {
				$catName = $value->name;
				$catID   = $value->id;
				$parentID = $value->parent_id;
				$subArr[] = array("name" =>ucfirst($catName) , "catID" =>(int)$catID , "parentID" =>(int)$parentID );
			}
			$myArray[] = array("name" =>ucfirst($name), "catID" =>(int)$parentcatID, "subCat" => $subArr);
		}
	$json = array("success" => 1, "result" => $myArray, "error" => "No Error Found");		
	}
	}
echo json_encode($json);