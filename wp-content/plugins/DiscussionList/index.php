<?php
/*
Plugin Name: Discussion Sona Circle
Description:
Author: Abhinav Grover
*/

if (is_admin())
{   
  function form_create_discussion_feeds_section() 
	 {  
	//add_menu_page("Product Import","Product Import",1,"product_import","");
	
	add_menu_page("Discussion","Discussion",1,"discussion","");
	add_submenu_page("discussion","Discussion","Discussion",8,"discussion","discussion");
	add_submenu_page("discussion","Discussion","Discussion Category",8,"discussions_category","discussions_category");
	add_submenu_page("discussion","Discussion","Deleted Discussions",8,"deleted_discussions","deleted_discussions");
	 }  
   add_action('admin_menu','form_create_discussion_feeds_section'); 
   
}
function discussion()
{
	if(isset($_GET['discussionID'])) {
		include(ABSPATH ."wp-content/plugins/DiscussionList/feedDetails.php");
	}
	elseif(isset($_GET['addNew'])) {
		include(ABSPATH ."wp-content/plugins/DiscussionList/addNewfeeds.php");
	} else {
		include(ABSPATH ."wp-content/plugins/DiscussionList/liveFeeds.php");
	}
}
function discussions_category()
{
	include(ABSPATH ."wp-content/plugins/DiscussionList/discussionListing.php");
}
function deleted_discussions()
{
	include(ABSPATH ."wp-content/plugins/DiscussionList/deleted_discussions.php");
}