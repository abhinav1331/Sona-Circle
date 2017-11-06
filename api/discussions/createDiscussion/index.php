<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$userID = $data_body['userID'];
$catID = $data_body['catID'];
$title = $data_body['title'];
$description = $data_body['description'];
$time = time();
if($userID == "" || $catID =="" || $title == "" || $description == "")
	{
		$json = array("success" => 0, "result" => "", "error" =>  "no parameters");
	}
else
	{
		$user = get_user_by( 'ID', $userID );
		if(empty($user))
		{
			$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
		}
		else
		{
			$im_discussion = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion_category` WHERE `id` = $catID");
			if($im_discussion != 0) 
				{
					$im_discuss = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `id` = $catID");
					$cat = array();
					foreach($im_discuss as $key => $value)
					{
						$cat_ID = $value->id;
						$parentID = $value->parent_id;
					 	$cat[] = $cat_ID;
						if($parentID != 0) {
						 	$cat[] = $parentID;
						}
					}
					    
				      	$wpdb->insert( 'im_discussion', array(
							'title' => $title,
							'description' => $description,
							'user_id' => $userID,
							'discussion_created' => $time)
						);
					$lastid = $wpdb->insert_id;
					foreach($cat as $key => $value)
					{
							$wpdb->insert( 'im_discussion_rel', array(
							 'dis_id' => $lastid,
							 'cat_id' => $value)
							);
						
					}	 
					
				}
			else
			{
				$json = array("success" => 0, "result" => array(), "error" =>  "Invalid category");
			}
		}
	    $json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");	
	}
echo json_encode($json);